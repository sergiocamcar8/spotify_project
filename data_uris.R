# This file contains the url's for each playlist found using the Spotify desktop app.
# Its purpose is to feed the data_extraction file by using the 'uri'. 
# Not all countries had a top 50 playlist at the time of data extraction


# It produces a table with columns 'url','country','spotify','country_code', 'uri' and saves it.
  # url: Desktop app playlist url
  # country: Name of country
  # spotify: is it a playlist by spotify? 1=Yes
  # contry_code: country 3-letter code according to the world bank
    # https://wits.worldbank.org/wits/wits/witshelp/content/codes/country_codes.htm
  # uri: Spotify identifyier for the playlist object



AFG <- c("https://open.spotify.com/playlist/1m7Ov4UeE0XYD2P82Qnt8B?si=7032a646dc034f45",'afghanistan', 1, 'AFG') # Afghanistan
ALB <- c("https://open.spotify.com/playlist/7CfHr38WwpyBO2TAh3Jww6?si=213510f0685546d8", 'albania', 1, 'ALB') # Albania
DZA <- c("https://open.spotify.com/playlist/0nDVEGVo1LhER1Eha4ceKd?si=86d27069025e44f6", 'algeria', 0, 'DZA') # !! Algeria NOT SPOTIFY
# American Samoa NA
AND <- c("https://open.spotify.com/playlist/37i9dQZEVXbMxjQJh4Um8T?si=13943921b25d4dff",'andorra', 0, 'AND') # !!!Andorra
AGO <- c("https://open.spotify.com/playlist/3GRP3YVQjbI4baIJdTJHbi?si=bb52a0fa4df24132" , 'angola', 0, 'AGO')# !!!Angola !! NOt SPOTIFY & >50!!
# Anguila NA
# Antigua & Barbuda NA
ARG <- c("https://open.spotify.com/playlist/37i9dQZEVXbMMy2roB9myp?si=b9d5f851a3534597", 'argentina', 1, 'ARG') # ARGENTINA
ARM <- c("https://open.spotify.com/playlist/1GtmdClNoNIYMm0INsO3AQ?si=bec8b5d2234241fa", 'armenia', 0, 'ARM') # !!!ARMENIA !! NOT SPOTIFY
# Aruba NA
AUS <- c("https://open.spotify.com/playlist/37i9dQZEVXbJPcfkRz0wJ0?si=7c1c276c08374c56", 'australia', 1, 'AUS') # Australia
AUT <- c("https://open.spotify.com/playlist/37i9dQZEVXbKNHh6NIXu36?si=797638d5635347ea", 'austria', 1, 'AUT') # Austria

AZE <- c("https://open.spotify.com/playlist/3c01GeeAVg0kPqjyX7dfhj?si=40e67639d7674d98", 'azerbaijan', 0, 'AZE') # !!!Azerbaijan !! NOT SPOTIFY
# BAHAMAS NA
BHR <- c("https://open.spotify.com/playlist/4AZabnqdKDleqyzI08pPZr?si=c9e201335e61437c'", 'bahrain', 0, 'BHR')# !! BAHRAIN NOT SPOTIFY
# BANGLADESH NA
# BARBADOS NA
BLR <- c("https://open.spotify.com/playlist/7IVynbsRgkG5lHzZEBJCdf?si=0ffec60920db4479", 'belarus', 0, 'BLR') # !! BELARUS NOT SPOTIFY & >50
BEL <- c("https://open.spotify.com/playlist/37i9dQZEVXbJNSeeHswcKB?si=dd0674b11ff446b0", 'belgium', 1, 'BEL') # BELGIUM
#BLX <- c("https://open.spotify.com/playlist/37i9dQZEVXbKGcyg6TFGx6?si=7b485dede8784c57", 'luxemburg', 1, 'BLX') # LUXEMBURG
# BELIZE NA
# BENIN NA
# BERMUDA NA
BTN <- c("https://open.spotify.com/playlist/7HzV9uOORCAUu1V1gHuFRC?si=804e2b8c9f004739", 'bhutan', 0, 'BTN') # !! BHUTAN NOT SPOTIFY > 50
BOL <- c("https://open.spotify.com/playlist/37i9dQZEVXbJqfMFK4d691?si=b27e1beaf74645f3", 'bolivia', 1, 'BOL') # BOLIVIA
BIH <- c("https://open.spotify.com/playlist/3bUpY5zNLY5fUp4vjWlcJ4?si=7f61e460103143f0", 'bosnia_herzegovina', 0, 'BIH') # !! BOSNIA HEREGOVINA NOT SPOTIFY
BWA <- c("https://open.spotify.com/playlist/7qghecDh8wTWv5kb5wOQdT?si=1203ce6555cf4561", 'botswana', 0, 'BWA') # !! BOTSWANA
BRA <- c("https://open.spotify.com/playlist/37i9dQZEVXbMXbN3EUUhlg?si=d3d8b1cb690c448e", 'brazil', 1, 'BRA') # BRAZIL
BGR <- c("https://open.spotify.com/playlist/37i9dQZEVXbNfM2w2mq1B8?si=fce1a50d03b74eb9", 'bulgaria', 1, 'BGR') # BULGARIA
# BURKINA FASO #NA
BDI <- c("https://open.spotify.com/playlist/37fZmlUu4uNaep47JDWBgT?si=de4e980b54e54652", 'burundi', 0, 'BDI') # !! BURUNDI >50
KHM <- c("https://open.spotify.com/playlist/42E8Ls2T8QK63F6R3k5FOw?si=f4b32cd319024608", 'cambodia', 0, 'KHM') # !!!CAMBODIA
CMR <- c("https://open.spotify.com/playlist/74RBxxUiRfBXqxiPhNhT2v?si=cd40033832e741e3", 'cameroun', 0, 'CMR') # !!! CAMEROON >50
CAN <- c("https://open.spotify.com/playlist/37i9dQZEVXbKj23U1GF4IR?si=5b3a84f311844e6e", 'canada', 1, 'CAN') # CANADA
# CAPE VERDE NA
# CAYMAN ISLANDSS NA
# CENTRAL AFRICAN REPUBLIC NA
# CHAD NA
CHL <- c("https://open.spotify.com/playlist/37i9dQZEVXbL0GavIqMTeb?si=ec91e45b256948f9", 'chile', 1, 'CHL') # CHILE
CHN <- c("https://open.spotify.com/playlist/3qwyQJzNAt4BDfnijpKkbi?si=f5a72b6cce6249f5", 'china', 0, 'CHN') # !!!CHINA
# CRISTMAS ISLANDSS NA
# COCOS NA
COL <- c("https://open.spotify.com/playlist/37i9dQZEVXbOa2lmxNORXQ?si=c103d2ba3f344371", 'colombia', 1, 'COL') # COLOMBIA
COM <- c("https://open.spotify.com/playlist/02m3SHGpuIwhXW4QupvSlg?si=ec03bc2084fd428f", 'comoros', 0, 'COM') # !! COMOROS
ZAR <- c("https://open.spotify.com/playlist/2wcOr3xqK2ZXD5uQkdJcnO?si=faef42ecf17145e2", 'dem_rep_congo', 0, 'ZAR') # !! CONGO DEM REPU
# CONGO NA
# COOK ISLANDSS NA
CRI <- c("https://open.spotify.com/playlist/37i9dQZEVXbMZAjGMynsQX?si=a701af6aa71b4d00", 'costa_rica', 1, 'CRI') # COSTA RICA
# COTE DIVORE NA
HRV <- c("https://open.spotify.com/playlist/3qJqvztOsDD9z27yK7m1ha?si=3b919a4c3e004b86", 'croatia', 0, 'HRV') # !!! CROATIA > 50
# CUBA #NA
CYP <- c("https://open.spotify.com/playlist/37i9dQZEVXbNBxnXSWuAcX?si=b12753ff936a42e8", 'cyprus', 0, 'CYP') # ** CYPRUS 
CZE <- c("https://open.spotify.com/playlist/37i9dQZEVXbIP3c3fqVrJY?si=2e85c49519a44650", 'czech_republic', 1, 'CZE') # CZECH REPUBLIC
DNK <- c("https://open.spotify.com/playlist/37i9dQZEVXbL3J0k32lWnN?si=2f0efddf1a8e466e", 'denmark', 1, 'DNK') # DENMARK
# DOMINICA NA
DOM <- c("https://open.spotify.com/playlist/37i9dQZEVXbKAbrMR8uuf7?si=51f2f61e78f744a9", 'dominican_rep', 1, 'DOM') # DOMINICAN REPUBLIC
# EAST TIMOR NA
ECU <- c("https://open.spotify.com/playlist/37i9dQZEVXbJlM6nvL1nD1?si=9c4e534c2cf949a3", 'ecuador', 1, 'ECU') # ECUADOR
EGY <- c("https://open.spotify.com/playlist/37i9dQZEVXbLn7RQmT5Xv2?si=818c878a03574e02", 'egypt', 1, 'EGY') # EGYPT
SLV <- c("https://open.spotify.com/playlist/37i9dQZEVXbLxoIml4MYkT?si=8e9d9f7e2452472e", 'el_salvador', 1, 'SLV') # EL SALVADOR
# EQUATORIAL GUINEA NA
# ERITREA NA
EST <- c("https://open.spotify.com/playlist/37i9dQZEVXbLesry2Qw2xS?si=051d7c914d174a3e", 'estonia', 1, 'EST') # ESTONIA
# ETHIOPIA NA
# FAEROE ISLANDSS NA
# FIJI NA
FIN <- c("https://open.spotify.com/playlist/37i9dQZEVXbMxcczTSoGwZ?si=fdb3bd1e9e094281", 'finland', 1, 'FIN') # FINLAND
FRA <- c("https://open.spotify.com/playlist/37i9dQZEVXbIPWwFssbupI?si=a22f8da1b3084103", 'france', 1, 'FRA') # FRANCE
# FRENCH GUIANA NA
# FRENCH POLYNESIA NA
GAB <- c("https://open.spotify.com/playlist/3jDALIM1pSL9yfj8yKDWzR?si=784be148300041c0", 'gabon', 0, 'GAB') # !! GABON 
GMB <- c("https://open.spotify.com/playlist/0MHyhxBxVRx1C0yUgx0Evj?si=97ac0d74dac44b75", 'gambia', 0, 'GMB') # !! GAMBIA > 100
GEO <- c("https://open.spotify.com/playlist/7LtHsfPd6oBt4geY40BTpU?si=ed83d3d30a5640ca", 'georgia', 0, 'GEO') # !! GEORGIA > 50
DEU <- c("https://open.spotify.com/playlist/37i9dQZEVXbJiZcmkrIHGU?si=6ec74f46db6a474c", 'germany', 1, 'DEU') # GERMANY
GHA <- c("https://open.spotify.com/playlist/1gZujlcZuMxULOqXNmfzMZ?si=dcc36a3d94f94d3d", 'ghana', 0, 'GHA') # !! GHANA > 50
# GIBRALTAR NA
GRC <- c("https://open.spotify.com/playlist/37i9dQZEVXbJqdarpmTJDL?si=5c58327f469d4859", 'greece', 1, 'GRC') # GREECE
# GREENLAND NA
# GRENADA NA
# GUADELOUPE NA
# GUAM NA
GTM <- c("https://open.spotify.com/playlist/37i9dQZEVXbLy5tBFyQvd4?si=6d834262476a4ef6", 'guatemala', 1, 'GTM') # GUATEMALA
# GUINEA NA
# GUINEA-BISSAU NA
# GUYANA NA
HTI <- c("https://open.spotify.com/playlist/6bBlhdOPVzOAEu2YLUe9BB?si=5da96221b17c44e3", 'haiti', 0, 'HTI') # !! HAITI > 50
HND <- c("https://open.spotify.com/playlist/37i9dQZEVXbJp9wcIM9Eo5?si=06aa369703a34f19", 'honduras', 1, 'HND') # HONDURAS
HKG <- c("https://open.spotify.com/playlist/37i9dQZEVXbLwpL8TjsxOG?si=58a6a1dceb214a3b", 'hong_kong', 1, 'HKG') # HONG KONG
HUN <- c("https://open.spotify.com/playlist/37i9dQZEVXbNHwMxAkvmF8?si=1de99745840c424d", 'hungary', 1, 'HUN') # HUNGARY
ISL <- c("https://open.spotify.com/playlist/37i9dQZEVXbKMzVsSGQ49S?si=b0ca8d4836624327", 'iceland', 1, 'ISL') # ICELAND
IND <- c("https://open.spotify.com/playlist/37i9dQZEVXbLZ52XmnySJg?si=8b531f9279844367", 'india', 1, 'IND') # INDIA
IDN <- c("https://open.spotify.com/playlist/37i9dQZEVXbObFQZ3JLcXt?si=023874d798dd44fc", 'indonesia', 1, 'IDN') # INDONESIA
IRN <- c("https://open.spotify.com/playlist/46UCdOJ7QGi2oSidZAmJyG?si=2621389394944c66", 'iran', 0, 'IRN') # !! IRAN
IRQ <- c("https://open.spotify.com/playlist/1q2Sa5WT8eBfyVkEJ3Qf3h?si=d576c0ae7b05481d", 'iraq', 0, 'IRQ') # !! IRAQ
IRL <- c("https://open.spotify.com/playlist/37i9dQZEVXbKM896FDX8L1?si=b1c6b9ed35974dda", 'ireland', 1, 'IRL') # IRELAND
ISR <- c("https://open.spotify.com/playlist/37i9dQZEVXbJ6IpvItkve3?si=bc142ebcaaca4cf7", 'israel', 1, 'ISR') # ISRAEL
ITA <- c("https://open.spotify.com/playlist/37i9dQZEVXbIQnj7RRhdSX?si=0e0068280f7d4684", 'italy', 1, 'ITA') # ITALY
JAM <- c("https://open.spotify.com/playlist/4wFKgC8JtqlBNkikhrad5e?si=c746d597ddc34fb2", 'jamaica', 0, 'JAM') # !!JAMAICA
JPN <- c("https://open.spotify.com/playlist/37i9dQZEVXbKXQ4mDTEBXq?si=f3b083938af047b6", 'japan', 1, 'JPN') # JAPAN
JOR <- c("https://open.spotify.com/playlist/7ad3t01faQwAlRod2EBvTh?si=bb494e201f8e4de3", 'jordan', 0, 'JOR') # !! JORDAN
KAZ <- c("https://open.spotify.com/playlist/4dEdHrNNhsMN8CNN1dGVWS?si=e113d94daa094989", 'kazakhstan', 0, 'KAZ') # !! KAZAKHSTAN
KEN <- c("https://open.spotify.com/playlist/03aUN993Kvn0DJFezeBv2r?si=6b9d88d5c7b04fea", 'kenya', 0, 'KEN') # !! KENYA >50
# KIRIBATI NA
KOR <- c("https://open.spotify.com/playlist/37i9dQZEVXbNxXF4SkHj9F?si=b1d4864c74ad47b9", 'korea', 1, 'KOR') # KOREA
# KUWAIT NA
# KYRGYZ NA
# LAO NA
LVA <- c("https://open.spotify.com/playlist/37i9dQZEVXbJWuzDrTxbKS?si=1a845d0afc2a4591", 'latvia', 1, 'LVA') # LATVIA
LBN <- c("https://open.spotify.com/playlist/37i9dQZF1DXaywRlmHaP59?si=9c8d9a632f3842d1", 'lebanon', 0, 'LBN') # **LEBANON > 50 ** LEBANON SOUNDS BY SPOTIFY
# LESOTHO NA
# LIBERIA NA
LBY <- c("https://open.spotify.com/playlist/2MerQ3lY8TDAbc8tNoUXz0?si=998ac6cde6b84dc3", 'libya', 0, 'LBY') # !! LIBYA > 50
# LIECHTENSTEIN NA
LTU <- c("https://open.spotify.com/playlist/37i9dQZEVXbMx56Rdq5lwc?si=1055c5a672084b4e", 'lithuania', 1, 'LTU') # LITHUANIA
LUX <- c("https://open.spotify.com/playlist/37i9dQZEVXbKGcyg6TFGx6?si=7aed1ba17ac745d5", 'luxembourg', 1, 'LUX') # LUXEMBOURG
# MACAO NA
# MACEDONIA NA
# MADAGASCAR NA
# MALAWI NA
MYS <- c("https://open.spotify.com/playlist/37i9dQZEVXbJlfUljuZExa?si=8033057e40ca43be", 'malaysia', 1, 'MYS') # MALAYSIA
# MALI NA
# MALTA NA
# MARTINIQUE NA
# MAURITANIA NA
# MAURITIUS
MEX <- c("https://open.spotify.com/playlist/37i9dQZEVXbO3qyFxbkOE1?si=a9d2ff9d832c4c86", 'mexico', 1, 'MEX') # MEXICO
# MOLDOVA NA
# MONACO NA
MNG <- c("https://open.spotify.com/playlist/2mZLDHPrl2nQRltFNBxGJR?si=de58581f215048b5", 'mongolia', 0, 'MNG') # !! MONGOLIA > 50
# MONTSERRAT NA
MAR <- c("https://open.spotify.com/playlist/37i9dQZEVXbJU9eQpX8gPT?si=322ba897c7804923", 'morocco', 1, 'MAR') # MOROCCO
# MOZAMBIZE NA
# MYANMAR NA
# NAMIBIA NA
# NAURU NA
NPL <- c("https://open.spotify.com/playlist/1cupUEWuJm6vB3W6k7vnSf?si=9e445ad93a904902", 'nepal', 0, 'NPL') # !! NEPAL > 50
NLD <- c("https://open.spotify.com/playlist/37i9dQZEVXbKCF6dqVpDkS?si=3942ca9054f24e1e", 'netherlands', 1, 'NLD') # NETHERLANDS
NZL <- c("https://open.spotify.com/playlist/37i9dQZEVXbM8SIrkERIYl?si=8074f34c661f47e2", 'new_zealand', 1, 'NZL') # NEW ZEALAND
NIC <- c("https://open.spotify.com/playlist/37i9dQZEVXbISk8kxnzfCq?si=295d76e1c55b4ea8", 'nicaragua', 1, 'NIC') # NICARAGUA
NGA <- c("https://open.spotify.com/playlist/37i9dQZEVXbKY7jLzlJ11V?si=f769cefb45dd4971", 'nigeria', 1, 'NGA') # !! NIGERIA
NOR <- c("https://open.spotify.com/playlist/37i9dQZEVXbJvfa0Yxg7E7?si=178ee7c19d0d40b8", 'norway', 1, 'NOR') # NORWAY
# OMAN NA
# PAKISTAN NA
# PALAU NA
PAN <- c("https://open.spotify.com/playlist/37i9dQZEVXbKypXHVwk1f0?si=5adf0093c0fe4860", 'panama', 1, 'PAN') # PANAMA
# PAPUA NEW GUINEA NA
PRY <- c("https://open.spotify.com/playlist/37i9dQZEVXbNOUPGj7tW6T?si=00081e1f6bac482c", 'paraguay', 1, 'PRY') # PARAGUAY
PER <- c("https://open.spotify.com/playlist/37i9dQZEVXbJfdy5b0KP7W?si=2295f31999344587", 'peru', 1, 'PER')  # PERU
PHI <- c("https://open.spotify.com/playlist/37i9dQZEVXbNBz9cRCSFkY?si=55227e01d3db4e9a", 'philippines', 1, 'PHI') # PHILIPPINES
POL <- c("https://open.spotify.com/playlist/37i9dQZEVXbN6itCcaL3Tt?si=8e4acc24b3724ab9", 'poland', 1, 'POL') # POLAND
PRT <- c("https://open.spotify.com/playlist/37i9dQZEVXbKyJS56d1pgi?si=f7781a0728934ef3", 'portugal', 1, 'PRT') # PORTUGAL
PRI <- c("https://open.spotify.com/playlist/3NJmFR02JQRYIB7COYckSR?si=8a343b486ead4cbc", 'puerto_rico', 0, 'PRI') # !! PUERTO RICO > 50
# QATAR NA
# REUNION NA
ROM <- c("https://open.spotify.com/playlist/37i9dQZEVXbNZbJ6TZelCq?si=0ac7d4615d644dbd", 'romania', 1, 'ROM') # ROMANIA
RUS <- c("https://open.spotify.com/playlist/6qv7CRaZr9nJaamM8Xtrv6?si=fddb279c78cc4f72", 'russia', 0, 'RUS') # !! RUSSIA
# RWANDA NA
# SAMOA NA
SAU <- c("https://open.spotify.com/playlist/37i9dQZEVXbLrQBcXqUtaC?si=d57a023516514e1f", 'saudi_arabia', 1, 'SAU') # SAUDI ARABIA 
SEN <- c("https://open.spotify.com/playlist/1JmAj9IDoUoyjQxFkcMO8E?si=990557f9dcf846c6", 'senegal', 0, 'SEN') # !! SENEGAL > 50
# SIERRALEONE NA
SGP <- c("https://open.spotify.com/playlist/37i9dQZEVXbK4gjvS1FjPY?si=8b6de466c7de43cd", 'singapore', 1, 'SGP') # SINGAPORE
SVK <- c("https://open.spotify.com/playlist/37i9dQZEVXbKIVTPX9a2Sb?si=be26e8aedf22465b", 'slovakia', 1, 'SVK') # SLOVAK REPUBLIC
SVN <- c("https://open.spotify.com/playlist/2mN8qgKnWkvm3ZyQt0l4VB?si=13afade4d65243dd", 'slovenia', 0, 'SVN') # !! SLOVENIA > 50
# SOLOMON NA
# SOMALIA NA
ZAF <- c("https://open.spotify.com/playlist/37i9dQZEVXbMH2jvi6jvjk?si=4c46b84491dc424e", 'south_africa', 1, 'ZAF') # SOUTH AFRICA
ESP <- c("https://open.spotify.com/playlist/37i9dQZEVXbNFJfN1Vw8d9?si=b55377866c934996", 'spain', 1, 'ESP') # SPAIN
LKA <- c("https://open.spotify.com/playlist/37i9dQZF1DX4QcmlTAbT3k?si=9b76697ffac74bd9", 'sri_lanka', 0, 'LKA') # **SRI LANKA ** hot hits sri lanka by Spotify
SDN <- c("https://open.spotify.com/playlist/37i9dQZF1DX15iTqq2X8NE?si=9fe8c3ad95a24769", 'sudan', 0, 'SDN') # ** SUDAN ** Sudan Sounds
# SURINAME NA
# SWAZILAND NA
SWE <- c("https://open.spotify.com/playlist/37i9dQZEVXbLoATJ81JYXz?si=fa48da5366b94656", 'sweden', 1, 'SWE') # SWEDEN
CHE <- c("https://open.spotify.com/playlist/37i9dQZEVXbJiyhoAPEfMK?si=e3fd18a363dc49a9", 'switzerland', 1, 'CHE') # SWITZERLAND
# SYRIA NA
TWN <- c("https://open.spotify.com/playlist/37i9dQZEVXbMnZEatlMSiu?si=cb62db1770ef4e1e", 'taiwan', 1, 'TWN') # TAIWAN
# TAJIKISTAN NA
TZA <- c("https://open.spotify.com/playlist/37i9dQZF1DXa8nSANRU3EB?si=c71724187651484a", 'tanzania', 0, 'TZA') # ** TANZANIA ** HOT HITS TANZANIA
THA <- c("https://open.spotify.com/playlist/37i9dQZEVXbMnz8KIWsvf9?si=60e4a257ddce42ea", 'thailand', 1, 'THA') # THAILAND
# TOGO NA
# TRINIDAD TOBAGO NA
# TUNISIA NA
TUR <- c("https://open.spotify.com/playlist/37i9dQZEVXbIVYVBNw9D5K?si=8280d562ca5846b3", 'turkey', 1, 'TUR') # TURKEY
# TURKMENISTAN NA
UGA <- c("https://open.spotify.com/playlist/7EzKKynP10ro3tu4ly3XjN?si=f488bc923cd34709", 'uganda', 0, 'UGA') # !! UGANDA > 50
UKR <- c("https://open.spotify.com/playlist/37i9dQZEVXbKkidEfWYRuD?si=d38b486b0ee944ef", 'ukraine', 1, 'UKR') # UKRAINE
ARE <- c("https://open.spotify.com/playlist/37i9dQZEVXbM4UZuIrvHvA?si=84871f790ac14d68", 'united_arab_emirates', 1, 'ARE') # UNITED ARAB EMIRATES
GBR <- c("https://open.spotify.com/playlist/37i9dQZEVXbLnolsZ8PSNw?si=e58f9462e9af4a6a", 'united_kingdom', 1, 'GBR') # UK
USA <- c("https://open.spotify.com/playlist/37i9dQZEVXbLRQDuF5jeBp?si=5a08798694984259", 'united_states', 1, 'US') # US
URY <- c("https://open.spotify.com/playlist/37i9dQZEVXbMJJi3wgRbAy?si=df976890567d49d7", 'uruguay', 1, 'URY') # URUGUAY
UZB <- c("https://open.spotify.com/playlist/4fauM8JU1ByJq4xUdgwPMG?si=d161251ead614f57", 'uzbekistan', 0, 'UZB') # !! UZBEKISTAN > 50
VEN <- c("https://open.spotify.com/playlist/0KJwkR9ydyN6WnYlE0fjb1?si=0a925d9503a9487f", 'venezuela', 0, 'VEN') # !! VENEZUELA 
VNM <- c("https://open.spotify.com/playlist/37i9dQZEVXbLdGSmz6xilI?si=14a02b1d64ce46b2", 'vietnam', 1, 'VNM') # VIETNAM
# YEMEN NA
ZMB <- c("https://open.spotify.com/playlist/7kGAFKlYMuwarEjgdsMIy1?si=1f912b17b9c94887", 'zambia', 0, 'ZMB') # !! ZAMBIA > 50
ZWE <- c("https://open.spotify.com/playlist/6TPHCNm0tvOx6gC0MJ5rZO?si=420711a811604779", 'zimbawe', 0, 'ZWE') # !! ZIMBAWE > 50





######
# Building the data frame

uri_data <- data.frame(rbind(AFG, ALB, DZA, AND, AGO, ARG, ARM, AUS, AUT, AZE, BHR, BLR, BEL, BLX, BTN, BOL, BIH, BWA, BRA, BGR, BDI, KHM, CMR, CAN, CHL, CHN, COL, COM, ZAR, CRI, HRV, CYP, CZE, DNK, DOM, ECU, EGY, SLV, EST, FIN, FRA, GAB, GMB, GEO, DEU, GHA, GRC, GTM, HTI, HND, HKG, HUN, ISL, IND, IDN, IRN, IRQ, IRL, ISR, ITA, JAM, JPN, JOR, KAZ, KEN, KOR, LVA, LBN, LBY, LTU, LUX, MYS, MEX, MNG, MAR, NPL, NLD, NZL, NIC, NGA, NOR, PAN, PRY, PER, PHI, POL, PRT, PRI, ROM, RUS, SAU, SEN, SGP, SVK, SVN, ZAF, ESP, LKA, SDN, SWE, CHE, TWN, TZA, THA, TUR, UGA, UKR, ARE, GBR, USA, URY, UZB, VEN, VNM, ZMB, ZWE))
colnames(uri_data) <- c('url','country','spotify','country_code')

# The URI can be obtained within each URL as follows:
uri_data$uri <- substring(substring(uri_data$url, 35, nchar(uri_data$url)),1, 22)

write.csv(uri_data, "../Statistical Consulting/r_project/data/uri_data")