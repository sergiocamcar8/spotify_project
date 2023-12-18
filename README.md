# spotify_project
An analysis of music tastes similarities between countries

data_uris: File extracting uris from URLS. This file contains the url's for each playlist found using the Spotify desktop app.Its purpose is to feed the data_extraction file by using the 'uri'. Not all countries had a top 50 playlist at the time of data extraction

data_extraction: This script needs first the client keys, username and uri_data to work. It iteratively saves the top 50 songs for each country as a separate file, after discarding non-required columns.

region_mapping: This file maps a region to a country

master_data: This file consolidates all country data produced by data_extraction into a single file

exploratory_data_analysis: This file explores the master_data, globally, regionally and locally. It also computes numbers and data visualizations of interest.

distance_analysis: This script loads master_data to conduct the distance and closeness analysis
