# Load the dplyr package
library(dplyr)

# ---------------------------------- #
#           Deliverable 1            #
#  Linear Regression to Predict MPG  #
# ---------------------------------- #

# Import dataset
mecha_car <- read.csv("Resources/MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)


# Generate multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_car)


# Generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_car))


# --------------------------------------------- #
#                 Deliverable 2                 #
#  Create Visualizations for the Trip Analysis  #
# --------------------------------------------- #

# Import dataset
suspension_coil <- read.csv("Resources/Suspension_Coil.csv", check.names = F, stringsAsFactors = F)

# Create a summary table for all manufacturing lots
total_summary <- suspension_coil %>% 
  summarize(Mean = mean(PSI), 
            Medain = median(PSI), 
            Variance = var(PSI), 
            SD = sd(PSI), .groups = "keep")

# Create a lot summary table for each manufacturing lot
lot_summary <- suspension_coil %>% 
  group_by(Manufacturing_Lot) %>% 
  summarize(Mean = mean(PSI), 
            Medain = median(PSI), 
            Variance = var(PSI), 
            SD = sd(PSI), .groups = "keep")


# ------------------------------ #
#         Deliverable 3          #
#  T-Tests on Suspension Coils   #
# ------------------------------ #

# Perform t-test across all manufacturing lots
t.test(suspension_coil$PSI, mu = 1500)

# Perform t-test for each manufacturing lot
t.test(subset(suspension_coil$PSI, suspension_coil$Manufacturing_Lot == "Lot1"), mu = 1500)
t.test(subset(suspension_coil$PSI, suspension_coil$Manufacturing_Lot == "Lot2"), mu = 1500)
t.test(subset(suspension_coil$PSI, suspension_coil$Manufacturing_Lot == "Lot3"), mu = 1500)


