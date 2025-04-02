#### Workspace setup ####
set.seed(912)
# List of necessary packages
packages <- c("tidyverse")
# Install missing packages
missing_packages <- packages[!(packages %in% installed.packages()[, "Package"])]
install.packages(missing_packages)
# Load packages
lapply(packages, library, character.only = TRUE)

# 
freeze <- data.frame(
  experimental_condition = 1:8,
  
  # Factor A: Initial water temperature (Room temperature vs. Hot).
  water_temp = factor(c("RoomTemp", "RoomTemp", "RoomTemp", "RoomTemp",
                        "Hot", "Hot", "Hot", "Hot"), 
                      levels = c("RoomTemp", "Hot")),
  
  # Factor B: Sugar added (No vs. Yes).
  sugar = factor(c("NoSugar", "NoSugar", "Sugar", "Sugar",
                   "NoSugar", "NoSugar", "Sugar", "Sugar"),
                 levels = c("NoSugar", "Sugar")),
  
  # Factor C: Cup material (Plastic vs. Glass).
  cup_material = factor(c("Plastic", "Glass", "Plastic", "Glass",
                          "Plastic", "Glass", "Plastic", "Glass"),
                        levels = c("Plastic", "Glass")),
  
  # Observed freezing time in minutes.
  time_1 = c(135, 120, 150, 140, 165, 145, 175, 155),
  time_2 = c(135, 125, 155, 135, 165, 140, 170, 165)
)

# Save the data to a CSV file in your working directory
write.csv(freeze, "freezing_time_data.csv", row.names = FALSE)