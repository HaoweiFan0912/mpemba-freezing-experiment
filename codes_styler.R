#### Workspace setup ####
set.seed(912)
# List of necessary packages
packages <- c("tidyverse", "knitr", "FrF2")
# Install missing packages
missing_packages <- packages[!(packages %in% installed.packages()[, "Package"])]
install.packages(missing_packages)
# Load packages
lapply(packages, library, character.only = TRUE)

### Set up folder path ###
folder_path <- "/Users/fhw0912/Desktop/305/mpemba-freezing-experiment"

### Styling ###
r_files <- list.files(
  path = folder_path,
  pattern = "\\.(R|Rmd)$",
  recursive = TRUE,
  full.names = TRUE
)

styler::style_file(r_files)
