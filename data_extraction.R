library(tidyverse)
library(spotifyr)

# This script needs first the client keys, username and uri_data to work
# It iteratively saves the top 50 songs for each country as a separate file, 
# after discarding non-required columns.

# Spotify API client keys
Sys.setenv(SPOTIFY_CLIENT_ID = read_lines("../Statistical Consulting/r_project/clientid.txt"))
Sys.setenv(SPOTIFY_CLIENT_SECRET = read_lines("../Statistical Consulting/r_project/client_secret.txt"))

# Spotify Username
usernm <- read_lines("../Statistical Consulting/r_project/username.txt")

uri_data <- read_csv("../Statistical Consulting/r_project/data/uri_data")

for (i in 80:dim(uri_data)[1]) {
  uri <- uri_data[i, 'uri']
  sptfy.plst <- uri_data[i, 'spotify']
  country <- uri_data[i, 'country']
  saving_directory <- paste0("../Statistical Consulting/r_project/data/",country)
  
  # Requesting data to the api
  df.playlist <- get_playlist_audio_features(usernm, playlist_uris = uri)
  
  if (sptfy.plst == 0 | dim(df.playlist)[1]>50) {
    # sorting from newest added to latest added
    df.playlist <- df.playlist[order(df.playlist$added_at, decreasing = T),]
    df.playlist <- head(df.playlist, 50)
  }
  
  df.playlist <- df.playlist %>% select(danceability, energy, key, loudness, mode,
                                        speechiness, acousticness, instrumentalness,
                                        liveness, valence, tempo, time_signature,
                                        track.duration_ms, track.explicit, track.popularity,
                                        track.uri, key_name, mode_name, key_mode)
  df.playlist <- df.playlist %>% mutate(country = country)
  df.playlist <- df.playlist %>% mutate(spotify_playlist = ifelse(sptfy.plst == 1, TRUE, FALSE))
  
  # 30 sec interval to hit again the API
  Sys.sleep(30)
  
  # saving the playlist
  write.csv(apply(df.playlist,2, as.character), saving_directory)
}
