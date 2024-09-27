#### Preamble ####
# Purpose: Downloads and saves the Police Annual Statistical Report - Reported Crimes dataset from OpenDataToronto
# Author: Jimin Lee 
# Date: 27 September 2024
# Contact: jamiejimin.lee@mail.utoronto.ca
# License: MIT
# Pre-requisites: N/A
# Any other information needed? N/A




#### Download data ####
# [...ADD CODE HERE TO DOWNLOAD...]
library(opendatatoronto)
library(dplyr)

# get package
package <- show_package("police-annual-statistical-report-reported-crimes")
package

# get resources for this package
resources <- list_package_resources("police-annual-statistical-report-reported-crimes")

# identify datastore resources; by default, Toronto Open Data sets datastore resource format to CSV for non-geospatial and GeoJSON for geospatial resources
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

# load the first datastore resource as a sample
raw_data <- filter(datastore_resources, row_number()==1) %>% get_resource()
raw_data


#### Save data ####
write_csv(raw_data, "data/raw_data/raw_propertycrime_data.csv")
