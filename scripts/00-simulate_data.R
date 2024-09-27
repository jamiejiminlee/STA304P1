#### Preamble ####
# Purpose: Simulates data for the Toronto Police Annual Statistical Report - Reported Crimes
# Author: Jimin Lee 
# Date: 24 September 2024 
# Contact: jamiejimin.lee@mail.utoronto.ca
# License: MIT
# Pre-requisites: N/A
# Any other information needed? N/A

library(tidyverse)

# Set seed for reproducibility
set.seed(123)

# Number of observations
n <- 150

# Define variables
year <- 2014:2023
geo_division <- c("D11", "D12", "D13", "D14", "D22", "D23", "D31", "D32", "D33",
                  "D41", "D42", "D43", "D51", "D52", "D53")
propertycrime_type <- c("Theft", "Break and Enter", "Fraud", "Assault", 
                        "Trespassing", "Arson", "Other")

# Simulate data using tibble
simulated_data <- 
  tibble(
    year = 2014:2023,
    propertycrime_type = sample(propertycrime_type, n, replace = TRUE),
  )

simulated_data
