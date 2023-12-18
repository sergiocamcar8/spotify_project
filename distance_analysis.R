library(tidyverse)

## This script loads master_data to conduct the distance and closeness analysis

data <- read_csv("r_project/data/master_data")

#####
# Additional data cleaning

data <- data %>% select(-key, -track.uri, -key_name, -mode_name, 
                       -key_mode, -country, -spotify_playlist, -region)
data <- data %>% rename(major = mode)
data <- data %>% mutate(track.explicit = ifelse(track.explicit == FALSE, 0, 1))


# Creating a standardizing function
stdize <- function(x) {
  std <- (x - mean(x))/sd(x)
  return(std)}


## Standardizing
# selecting only continuous variables to standardize
contvars <- c(names(data))
contvars <- contvars[!contvars %in% c('major', 'track.explicit', 'map_country')]

data_std <- data %>% mutate(danceability = stdize(danceability),
                        energy = stdize(energy),
                        loudness = stdize(loudness),
                        speechiness = stdize(speechiness),
                        acousticness = stdize(acousticness),
                        instrumentalness = stdize(instrumentalness),
                        liveness = stdize(liveness),
                        valence = stdize(valence),
                        tempo = stdize(tempo),
                        time_signature = stdize(time_signature),
                        track.duration = stdize(track.duration_ms),
                        track.popularity = stdize(track.popularity))


                        
#####
# Centroid Analysis, Euclidean and Mahalanobis

country_centroids <- data_std %>% group_by(map_country) %>% 
  summarise(across(everything(), mean))

countries <- c(country_centroids$map_country)


# Centroid Euclidean Analysis

## creating the euclidean distance matrix with row names as country
eucl_matrix <- data.frame(matrix(NA, nrow = dim(country_centroids)[1],
                                 ncol = dim(country_centroids)[1]),
                          row.names = country_centroids$map_country)

## Assigning to the column names the names of countries
colnames(eucl_matrix) <- country_centroids$map_country

## filling the Centroid Euclidean distance Matrix
for (i in 1:nrow(eucl_matrix)) {
  c1 <- country_centroids[i,-1]
  for (j in 1:nrow(eucl_matrix)) {
    c2 <- country_centroids[j,-1]
    eucl_matrix[i,j] <- sqrt(sum((c1-c2)^2))
  }
}




# Centroid Mahalanobis Analysis
## creating the mahalanobis distance matrix with row names as country
mahal_matrix <- data.frame(matrix(NA, nrow = dim(country_centroids)[1],
                                 ncol = dim(country_centroids)[1]),
                          row.names = country_centroids$map_country)

## Assigning to the column names the names of countries
colnames(mahal_matrix) <- country_centroids$map_country


# creating the variance-covaiance matrix
vcov.centroid <- var(country_centroids[,-1])


#mahalanobis(t[1,], t[2,], vcov.centroid, tol = 1e-27)

## filling the Centroid Mahalanobis distance Matrix
for (i in 1:nrow(mahal_matrix)) {
  t <- as.matrix(country_centroids[,-1])
  c1 <- t[i,]
  for (j in 1:nrow(mahal_matrix)) {
    c2 <- t[j,]
    mahal_matrix[i,j] <- mahalanobis(c1, c2, vcov.centroid, tol = 1e-27)
  }
}



#####
# centroid-to-song distance using Mahalanobis

# centroid-to-song Mahalanobis Analysis
## creating the mahalanobis distance matrix with
song.mahal_matrix <- data.frame(matrix(NA, nrow = dim(country_centroids)[1],
                                  ncol = dim(country_centroids)[1]))
# We don't use country names in the rows because distances are not symmetrical.

## Assigning to the column names the names of countries
colnames(song.mahal_matrix) <- country_centroids$map_country



# Columnwise
#temp <- countries[1:4]
# Select base country
for (c1 in countries) { #countries
  songs.c1 <- data %>% filter(map_country == c1) %>% select(-map_country)
  centroid.c1 <- apply(songs.c1, MARGIN = 2, FUN = mean)# Centroid of reference
  temp.cov <- var(songs.c1) #var-cov matrix
  
  if(det(temp.cov)==0) {
    song.mahal_matrix[,c1] <- rep(NA, nrow(song.mahal_matrix))
  } else {
  
  # Select comparing country  
  for (c2 in countries) {
    songs.c2 <- data %>% filter(map_country == c2) %>% select(-map_country)
    song.distances <- rep(NA,nrow(songs.c2))
    # Select a song
    for (song in 1:nrow(songs.c2)) {
      # Calculate distance for each song
      temp.dist <- mahalanobis(x = songs.c2[song,],
                               center = centroid.c1, 
                               cov = temp.cov,
                               tol = 1e-27)
      song.distances[song] <- temp.dist
    }
    # Average distances for each comparing country
    dist.c2 <- mean(song.distances)
    # Fill matrix
    song.mahal_matrix[match(c2, countries),c1] <- dist.c2
    }
  }
}


## A function that returns the top 5 closes countries using a matrix of distances
top5 <- function(matrix, country) {
  ctry <- matrix[,country]
  countries[match(head(sort(ctry),6),ctry)]
}

temp <- 'Germany'
top5(eucl_matrix, temp)
top5(mahal_matrix, temp)
top5(song.mahal_matrix, temp)




# Results tables. This code creates the table of results for each method

## Euclidean
results.eucl <- data.frame(
  matrix(data = NA, nrow = length(countries), ncol = 5)) # top 5
names(results.eucl) <- c('Country', '1st', '2nd', '3rd', '4th', '5th')
for (i in 1:length(countries)) {
  matrix <- eucl_matrix
  ctry <- countries[i]
  results.eucl[i,1] <- ctry
  for (j in 1:5) {
  results.eucl[i,j+1] <- c(top5(matrix, ctry)[top5(matrix, ctry)!= ctry])[j]
  }
}

write_csv(results.eucl, "r_project/data/results.eucl")

## Mahalnobis centroid-to-centroid
results.mahal <- data.frame(
  matrix(data = NA, nrow = length(countries), ncol = 5)) # top 5
names(results.mahal) <- c('Country', '1st', '2nd', '3rd', '4th', '5th')
for (i in 1:length(countries)) {
  matrix <- mahal_matrix
  ctry <- countries[i]
  results.mahal[i,1] <- ctry
  for (j in 1:5) {
    results.mahal[i,j+1] <- c(top5(matrix, ctry)[top5(matrix, ctry)!= ctry])[j]
  }
}

write_csv(results.mahal, "r_project/data/results.mahal")

## Mahalnobis centroid-to-song
results.mahal2 <- data.frame(
  matrix(data = NA, nrow = length(countries), ncol = 5)) # top 5

for (i in 1:length(countries)) {
  matrix <- song.mahal_matrix
  ctry <- countries[i]
  results.mahal2[i,1] <- ctry
  for (j in 1:5) {
    results.mahal2[i,j+1] <- c(top5(matrix, ctry)[top5(matrix, ctry)!= ctry])[j]
  }
}
names(results.mahal2) <- c('Country', '1st', '2nd', '3rd', '4th', '5th')
write_csv(results.mahal2, "r_project/data/results.mahal2")



