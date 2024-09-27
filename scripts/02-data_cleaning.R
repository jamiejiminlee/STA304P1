#### Preamble ####
# Purpose: Cleans the raw data from "Police Annual Statistical Report - Reported Crimes" to only account for "Crimes against property"
# Author: Jimin Lee
# Date: 27 September 2024
# Contact: jamiejimin.lee@mail.utoronto.ca
# License: MIT
# Pre-requisites: dataset from OpenDataToronto
# Any other information needed? N/A

#### Workspace setup ####
library(tidyverse)
library(janitor)

#### Clean data ####
raw_data <- read_csv("data/raw_data/raw_data.csv")

cleaned_data <-
  raw_data |>
  janitor::clean_names() |>
  filter(category == "Crimes Against Property") |>
  select(report_year, division, category, subtype, count) |>
  mutate(
    count_ = as.numeric(count)) |>
  tidyr::drop_na()
cleaned_data

#### Save data ####
write_csv(cleaned_data, "data/analysis_data/analysis_data.csv")