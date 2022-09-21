# MechaCar_Statistical_Analysis

## Purpose
In response to production troubles that are blocking the manufacturing team's progress on AutosRUs' newest prototype, the MechaCar, the following analytical tests have been summarized below:
- Multiple Linear Regression to identify the variables that predict the miles per gallon (MPG) of the MechaCar prototypes
- Summary statistics on the pounds per square inch (PSI) of suspension coils across multiple lots
- T-Tests to determine if the lots are statistically different from the mean population
- Future recommendation for additional statistical testing



## Linear Regression to Predict MPG
![Linear_Reg_MPG](https://user-images.githubusercontent.com/102555125/191608077-ee468b93-5568-4e25-a0f6-3194143da80e.png)


- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  - Vehicle-length and ground_clearance had the lowest p-values. Since these values are so low, and less than 0.05, they likely have a significant impact on the mpg.
- Is the slope of the linear model considered to be zero?
	- Since the p-value of the entire data set is so much smaller than the significance value of .05, there is sufficient evidence that we can reject the null hypothesis that the slope = 0.
- Does this linear model predict MPG of MechaCar prototypes effectively?
	- Since the r-squared value is higher than 50%, which exceeds the threshold of random chance, this linear model reasonably predicts the MPG of MechaCar prototypes.


## Summary Statistics on Suspension Coils

Given all lots together, the variance of the suspension coils does not exceed 100 PSI.  Therefore, all lots as a whole DO meet the variance requirements.

![Variance_all](https://user-images.githubusercontent.com/102555125/191608147-3cc4d56f-0b2f-46f4-bf6f-54472ea40311.png)


However, Lot 3 is showing variance nearly twice the acceptable design specifications at 170.3 PSI.  Lot 3 does NOT meet the design specifications and is throwing off the variance of the whole sample.

![Variance_by_lot](https://user-images.githubusercontent.com/102555125/191608242-384fd9b5-d771-4b57-844b-2344d3bc2479.png)


## T-Tests on Suspension Coils

### All Lots

![T-Test_all](https://user-images.githubusercontent.com/102555125/191608267-e8464adf-9bc8-4d4f-84dd-0770eb83aa99.png)

We CAN'T reject the null hypothesis that the true mean is 1500.  The p-value is greater than .05 and there is a 95% confidence level that 1500 is included in the range the mean could be.  Therefore, the means from the sample and the predicted population are statistically similar.

### Lot1

![T-Test_lot1](https://user-images.githubusercontent.com/102555125/191608284-349d4c42-4d11-48dd-9db6-1a218e29c57c.png)

In Lot 1 the mean is equal to the predicted mean of the population.  Even without a t-test, this would be statistically similar.

### Lot2 

![T-Test_lot2](https://user-images.githubusercontent.com/102555125/191608296-a8a20591-82bf-4b0b-8eb9-5fb79fa729ba.png)

In Lot 2, the p-value is also greater than the threshold of 0.05.  The confidence interval range also includes 1500 within it.  The mean from this subset is also statistically similar to the population.

### Lot3

![T-Test_lot3](https://user-images.githubusercontent.com/102555125/191608306-de8d6979-f010-47ce-888b-9b8acc50c06f.png)

Lot 3 is showing a p-value that does not meet the threshold of 0.05 and the upper range of means does not include the population mean.  Therefore, for this subset, we can reject the null hypothesis and conclude that the mean of Lot 3 may not be statistically similar to the population mean.

## Study Design: MechaCar vs Competition
Consumers are increasingly environmentally conscious as the damage to our earth made by human progress has become more apparent.  For this reason, statistical analysis on the emissions of MechaCar compared to its competition could give AutosRUs not only an environmental edge, but a competitive edge as more people seek vehicles that leave a smaller footprint.


### Metrics
- Emissions Testing from the internal emissions diagnostic system (CO2% at 25 mph)
- Mpg for city

### The Big Question
Is there any statistical difference on the emissions in cities based on gas mileage?  How do these compare between MechaCar and competitors?

### Hypotheses
- H0: increased gas mileage has no effect on emissions in cities
- Ha: increased gas mileage has an effect on emissions in cities

### Statistical Tests
- Correlation Analysis to see how closely related MechaCar and Competition gas mileage and emissions are at 25 mph (which is a fair assumption of speed in a city environment -and also one of the built-in speeds tested during emissions testing).
	- This will determine, using the Pearson Correlation Coefficient ( r ), how strongly related these 2 variables are.  If the r value is greater than 0.5, indicating at least a moderate strength of correlation, then a linear regression can be completed.
	- If the r-value is less than 0.5, we can conclude that emissions does not have a strong enough effect on the MPG to continue with regression testing.
- If linear regression is warranted, this data can be used to predict future measurements to see if increasing gas mileage will decrease emissions or vice versa. 
	- The linear regression will determine the slope direction of the scatter plot data and tell whether or not MPG has had a positive or negative effect on emissions.  The p-value can be used to determine if we can reject the null hypothesis and the r-squared value will tell us how well this model can predict future measurements.

	

### Data Needed
- CO2% from a large sample of MechaCar and competitor vehicles (note: these would likely need to be collected from states with a requirement for yearly emissions testing) 
- Miles per gallon for city driving on the same sample of vehicles

