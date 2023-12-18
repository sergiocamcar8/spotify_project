# This file explores the master_data, globally, regionally and locally.
# It also computes numbers and creates data visualizations of interest.

library(tidyverse)
library(ggthemes)

data <- read_csv("../Statistical Consulting/r_project/data/master_data")

# Creating a feature of Liveliness, combining danceability, energy, loudness, valence and tempo. All standardized

data$liveliness <- ((data$danceability - mean(data$danceability))/sd(data$danceability) +
  (data$energy - mean(data$energy))/sd(data$energy) +
  (data$loudness - mean(data$loudness))/sd(data$loudness) +
  (data$valence - mean(data$valence))/sd(data$valence) +
  (data$tempo - mean(data$tempo))/sd(data$tempo))/5


#####
# Global

  ## Track duration average
  global.duration_avg <- mean(data$track.duration_ms)/1000
  global.duration_sd <- sd(data$track.duration_ms)/1000
  
  plot.duration <- 
  ggplot(data, aes(x = track.duration_ms/1000)) +
    geom_density(color = 'darkblue', fill = 'lightblue') +
    labs(title = 'Track duration (secs)', x = 'seconds') +
    xlim(0,500) +
    geom_vline(data = data, aes(xintercept = global.duration_avg), color = 'darkblue') +
    geom_vline(xintercept = 60, linetype = 'dashed', color = 'darkgrey') +
    geom_vline(xintercept = 120, linetype = 'dashed', color = 'darkgrey') +
    geom_vline(xintercept = 180, linetype = 'dashed', color = 'darkgrey') +
    geom_vline(xintercept = 240, linetype = 'dashed', color = 'darkgrey') +
    geom_vline(xintercept = 300, linetype = 'dashed', color = 'darkgrey') +
    geom_vline(xintercept = 360, linetype = 'dashed', color = 'darkgrey') +
    geom_vline(xintercept = 420, linetype = 'dashed', color = 'darkgrey') +
    geom_vline(xintercept = 480, linetype = 'dashed', color = 'darkgrey') +
    # geom_vline(data = data, aes(xintercept = c(60,120,180,240,300,360)), color = 'grey') +
    theme_classic()

  #ggsave(plot = plot.duration, 
  #       "../Statistical Consulting/r_project/figures/track_duration.png")
  
  ## top 3 keys
  top3keys <- head(sort(table(data$key_mode),decreasing = T), 3)
  
  ## Minor vs Major modes
  global.minor_v_major <- table(data$mode_name)
  
  ## Average tempo
  global.tempo <- mean(data$tempo)
  global.tempo_sd <- global.tempo <- sd(data$tempo)
  
  ## Time signatures
  global.timesig <- sort(table(data$time_signature), decreasing = T)

# Regional liveliness analysis

  ## Liveliness/Calmness (mix: danceability, energy, loudness, valence, tempo)
  regional.liveliness <- data %>% group_by(region) %>%
    summarise(mean_liveliness = mean(liveliness), 
              sd_liveliness = sd(liveness)) %>% 
    arrange(desc(mean_liveliness))
  
  ## Regional equal-area heatmap
  
  world_map <-  map_data("world") %>% 
    filter(! long > 180)
  
  liveliness.country <- data %>% group_by(map_country) %>%
    summarise(mean_liveliness = mean(liveliness), 
              sd_liveliness = sd(liveness)) # Hong Kong not is merged with China
  
  liveliness.heatmap <- liveliness.country %>% 
    ggplot(aes(fill = mean_liveliness, map_id = map_country)) +
    ggtitle("Liveliness Heatmap") +
    geom_map(map = world_map) +
    expand_limits(x = world_map$long, y = world_map$lat) +
    theme_map() + coord_map("moll")
  
  ggsave(plot = liveliness.heatmap, 
         "../Statistical Consulting/r_project/figures/heatmap.png")

# Country

  ## Instrumentalness top 5
  country.instrumentalness <- head(data %>% group_by(country) %>%
    summarise(mean_instrumentalness = mean(instrumentalness),
              sd_instrumentalness = sd(instrumentalness)) %>% 
    arrange(desc(mean_instrumentalness)),5)
  
  ## Countries that listened to the most popular songs
  country.popular_top <- head(data %>% group_by(country) %>%
    summarise(mean_popular = mean(track.popularity),
              sd_popular = sd(track.popularity)) %>%
      arrange(desc(mean_popular)),5)
  
  country.popular_bottom <- tail(data %>% group_by(country) %>%
                                summarise(mean_popular = mean(track.popularity),
                                          sd_popular = sd(track.popularity)) %>%
                                arrange(desc(mean_popular)),5)

  ## Liveliness
  country.liveliness_top <- head(data %>% group_by(country) %>%
    summarise(mean_liveliness = mean(liveliness), 
              sd_liveliness = sd(liveness)) %>% 
    arrange(desc(mean_liveliness)),5)

  ## Downbeat/Calmness
  country.calmness <- head(data %>% group_by(country) %>%
    summarise(mean_liveliness = mean(liveliness), 
      sd_liveliness = sd(liveness)) %>% 
    arrange((mean_liveliness)),5)

  ## Variation in: Popularity
  country.varpop <- head(data %>% group_by(country) %>%
                             summarise(sd_pop= sd(track.popularity)) %>% 
                             arrange(desc(sd_pop)),5)  
  
  ## Variation in: Liveliness
  country.liveli <- head(data %>% group_by(country) %>%
                           summarise(sd_liv= sd(liveliness)) %>% 
                           arrange(desc(sd_liv)),5)  
  
  ## Variation in: Instrumentalness
  country.instr <- head(data %>% group_by(country) %>%
                           summarise(sd_instr= sd(instrumentalness)) %>% 
                           arrange(desc(sd_instr)),5)
  