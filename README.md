# MechaCar_Statistical_Analysis

![vehicle_data_analytics](https://user-images.githubusercontent.com/89308251/144724518-16106c53-171a-4a70-86f0-1accfbc313a8.png)


## Challenge Overview

### Purpose:

The purpose of this analysis is to learn how to use R and statistics in order to analyze vehicle data. 
- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population.
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers.   
  
## Resources
- Software:
   - RStudio 2021.09.1
   
- Data sources: 
   - [MechaCar_mpg.csv](https://github.com/SYDsCorner/MechaCar_Statistical_Analysis/blob/main/Resources/MechaCar_mpg.csv)
   - [Suspension_Coil.csv](https://github.com/SYDsCorner/MechaCar_Statistical_Analysis/blob/main/Resources/Suspension_Coil.csv)


## Deliverable 1: Linear Regression to Predict MPG

<p align="center">
  <img width="945" height="589" src="https://user-images.githubusercontent.com/89308251/144701176-7bbebd12-3376-407f-8bbd-3a123dfa33b7.png">
</p>


- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

   - According to our *Pr(>|t|)* value results, **vehicle length** and **ground clearance** (as well as intercept) are statistically unlikely to provide random amounts of variance to the linear model. In other words the vehicle length and ground clearance have a significant impact on the mpg values (fuel-efficiency).


- Is the slope of the linear model considered to be zero? Why or why not?

   - The p-value of our linear regression analysis is 5.35 x 10^-11, which is much **smaller than** our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is **not zero**.

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

   - Yes. From our linear regression model, the r-squared value is 0.71, which means that **roughly 71%** of the variablilty of our dependent variable (fuel-efficiency predictions) is explained using this linear model.


## Deliverable 2: Summary Statistics on Suspension Coils

<p align="center">
  <img width="522" height="376" src="https://user-images.githubusercontent.com/89308251/144700414-2066ccb2-c5b7-4bda-816d-6d78411e66f6.png">
</p>

- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

   - The current manufacturing data **does meet** this design specification requirement for **all manufacturing lots** because the variance of the suspension coils is 62.29 pounds per square inch which does not exceed 100 pounds per square inch.

   - For each lot individually, the current manufacturing data **does meet** this design specification requirement for **Lot1** and **Lot2** because the variances of the suspension coils are 0.98 and 7.47 pounds per square inch respectively. However the current manufacturing data **does not meet** this design specification requirement for **Lot3** because the variance of the suspension coils is 170.29 pounds per square inch which exceeds 100 pounds per square inch.


## Deliverable 3: T-Tests on Suspension Coils

<p align="center">
  <img width="509" height="211" src="https://user-images.githubusercontent.com/89308251/144701025-ed683eca-a9ec-4d16-9716-0558adf427b5.png">
</p>

- **Summary of t-Test across all manufacturing lots**

   - **All Lots:** Assuming our significance level was the common 0.05 percent, our p-value (0.06) is above our significance level. Therefore, we **do not have sufficient evidence to reject the null hypothesis**, and we would state that the two means are statistically similar.

--------------------------------------------------

<p align="center">
  <img width="867" height="601" src="https://user-images.githubusercontent.com/89308251/144701308-cffbe63d-e915-4596-b527-0c03a9540b01.png">
</p>


- **Summary of t-Test for each manufacturing lot**

   - **Lot 1:** our p-value (1) is above our significance level. Therefore, we **do not have sufficient evidence to reject the null hypothesis**, and we would state that the two means are statistically similar.

   - **Lot 2:** our p-value (0.60) is above our significance level. Therefore, we **do not have sufficient evidence to reject the null hypothesis**, and we would state that the two means are statistically similar.

   - **Lot 3:** our p-value (0.04) is lower than our significance level. Therefore, we **would have sufficient evidence to reject the null hypothesis**, and we would state that the two means are statistically different.


## Deliverable 4: Study Design: MechaCar vs Competition

> There are lot of metrics that would be of interest to a consumer, for example cost, city or highway fuel efficiency, horse power, maintenance cost, safety rating, etc. **For my study design**, 2 metrics that interested me were **safety rating** and **cost**. I imagined that I could divide safety rating by cost to get a **"safety rating to cost ratio"**, a score that shows how much safety value you are getting for the price. *For example, an expensive car with a low safety rating would get a very low score, while a cheap car with a good safety rating would get a very high score*.

- What metric or metrics are you going to test?
   - The metrics that I am going to test are **cost** and **safety rating**.

- What is the null hypothesis or alternative hypothesis?
   - **Null Hypothesis:** the average safety value of a mechacar car = the population mean value-safety score
   - **Alternative Hypothesis:** the average safety value of a mechacar car > the population mean value-safety score

- What statistical test would you use to test the hypothesis? And why?
   - **One-Sample t-Test:** since we are comparing against the population mean and only care about the Mechacar score being **greater than** the population mean, we would use a one-sample one-sided t-test

- What data is needed to run the statistical test?
   - Safety data from Mechacar testing / Price of MechaCar cars
   - Estimated average safety scores for population / Estimated average price for population

