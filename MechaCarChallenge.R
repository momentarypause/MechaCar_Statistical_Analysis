library(tidyverse)

# DELIVERABLE 1

mecha <- read.csv(file='MechaCar_mpg.csv')

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha))



# DELIVERABLE 2

#Read csv into table
suspension <- read.csv(file='Suspension_Coil.csv')

#summarize whole data set
total_summary <- suspension %>% summarize (Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Summary grouped by lot
lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize (Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')


# DELIVERABLE 3

#t.tests 
# H0: The true mean of PSI = 1500
# Ha: The true mean of PSI =/= 1500

# One Sample T-Test against potential population
t.test((suspension$PSI), mu=1500)

# Subsets of sample against the population
# Lot 1
t.test(subset(suspension, Manufacturing_Lot == 'Lot1', PSI), mu=1500)

# Lot 2
t.test(subset(suspension, Manufacturing_Lot == 'Lot2', PSI), mu=1500)

# Lot 3
t.test(subset(suspension, Manufacturing_Lot == 'Lot3', PSI), mu=1500)

       