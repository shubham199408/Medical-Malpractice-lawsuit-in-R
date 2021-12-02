# Medical-Malpractice-lawsuit-in-R
Performing Exploratory data analysis to determine the factors that affect the amount of claims an insurance company pays out for the medical malpractice lawsuits


Our first approach in analyzing the data set ‘Lawsuits’ is to determine the number of samples, type of variables, scaling/coding conventions if any used to validate data cleaning. Following these, the data set looks clean with no missing values and for the categorical variables replace the coding convention with their actual values for better ease of understanding them. Thus, the private attorney, severity and gender variables coding convention is updated.

As shown in below, begin by installing and loading the required libraries for the analysis. In this case, we have used ‘tidyverse’, ‘funModeling’ and ‘Hmisc’. These packages are designed for exploratory data analysis, data preparation, data manipulation, exploration, and visualization. Read in the data set file to R to access the data and do an analysis.

![image](https://user-images.githubusercontent.com/95050679/144333599-f4858179-caba-4be9-933e-a4b5c97b0d55.png)

It is a good practice knowing the number of samples, number of columns and their corresponding data types as shown below.

![image](https://user-images.githubusercontent.com/95050679/144333666-a1105439-364f-4c15-a255-7ca9f289bdae.png)

Figure below shows summary on the quantity of zeros(q_zeros), percentage of zeros(p_zeros), quantity of infinite values (q_inf), percentage of infinite values(p_inf), quantity of NA(q_na), percentage of NA(p_na), data type (type), quantity of unique values (unique) for every column in the data set file. The reason for considering this output is that variables with lots of zeros, several missing values may not be useful for analysis and can cause a bias model. Also, notice that Age has one zero values and rest of the data is clean

![image](https://user-images.githubusercontent.com/95050679/144333723-7b221732-723d-405e-a5f6-42a7ba591c10.png)

Next, analyze every categorical variable (univariate analysis) as a frequency or percentage distribution along with the plot. From this we can conclude how frequencies are distributed over values for each category in the variable. 

![image](https://user-images.githubusercontent.com/95050679/144333787-2cbe3315-50cf-411e-af60-7d1d3025e766.png)


The bar graph with frequency for severity shows that minor temporary damage had maximum payments of 38.14% than other severity categories. 

![image](https://user-images.githubusercontent.com/95050679/144333820-da8a6151-7ace-43e5-ac8f-ae63beb671a4.png)


The majority of the claim payment was made by the private attorney contributed to 66.1% than not a private attorney representative. This can be seen in Figure below.

![image](https://user-images.githubusercontent.com/95050679/144333908-978d8950-66e8-4c19-948f-6d345c734b65.png)


The bar chart of marital status as shown below, depicts the key contribution by married people as 60.17% than other classifications such as single, unknown, divorced and widowed.

![image](https://user-images.githubusercontent.com/95050679/144333970-2a082591-0875-4892-83b9-276c8e02e822.png)


The bar chart of Figure below represents the frequency distribution for the specialty. We can infer that family practice specialty is the highest with 14.41 percent and occupational medicine with 0.85 percent.

![image](https://user-images.githubusercontent.com/95050679/144334011-c5becd37-b3fd-487e-ac29-6cd8dc888f14.png)

Figure below is a bar chart that represents the frequency distribution for the insurance type. We can infer that there are mass number of private insurance types as compared to other insurance type.

![image](https://user-images.githubusercontent.com/95050679/144334083-ba48e02c-41c9-4488-9f1b-db046b87be37.png)


The bar chart as shown below represents the frequency distribution of gender type. As we see that there are more number of female claiming the insurance payment than male.

![image](https://user-images.githubusercontent.com/95050679/144334128-70877d2a-65aa-4992-8e21-f93b96abcc60.png)


Following, analyze the numerical variables in a table and plot the histogram for every numerical variable of the data set. Each indicator in the table of figure below contains the numerical variable name, the average, standard deviation which is a measure of spread around the mean value, variation coefficient, percentiles at 1, 5, 25 and so on, skewness is the measure of symmetry, kurtosis is the sharpness of the peak, the inter-quartile range, range_98 and range _80 the range where 98% and 80% of the values are respectively


![image](https://user-images.githubusercontent.com/95050679/144334158-462142b1-dc18-4174-b306-ec1f6a391851.png)


Pay attention to the histogram to see that the payment shows skewness to the right and the outliers. The box plot identifies 14 observations as outliers - the individual circles to the right of the right-hand whisker and there are very few large payments. 

![image](https://user-images.githubusercontent.com/95050679/144334231-9fdc3515-8dc9-420e-86af-ee46488c0abb.png) 

![image](https://user-images.githubusercontent.com/95050679/144334299-5a7b42ae-36dc-49a2-aec9-d14d0d4004c2.png)


From the below histogram we can see that the age is approximately normally distributed, symmetrical. The box plot shows that there are no outliers and it has no skewness

![image](https://user-images.githubusercontent.com/95050679/144334339-cbe60cb7-1f28-4321-ae24-fdc92e6bdec0.png)

![image](https://user-images.githubusercontent.com/95050679/144334349-72604ab9-7678-4db1-869f-00d076a70914.png)


Analyzing numerical and categorical variable (bivariate analysis) at the same time allows us to quickly profile a complete data set for all the variables.

![image](https://user-images.githubusercontent.com/95050679/144334404-9cb4c106-d7df-4713-a292-216a4d92b2c8.png)




The scatter plot of payment vs age shows cluster of data between age 20-60. The correlation between payment and age is -0.05854407 which indicates there is an inverse relationship between the two meaning when one increases, the other decreases. Here, as age increases the payment declines slightly. Since there is no linear relationship between payment and age, the line of best fit is a horizontal line going through mean of Payment values.

![image](https://user-images.githubusercontent.com/95050679/144334488-00e92948-e5b3-42b5-8457-cf97f8fdb80a.png)




The box plot of payment vs private attorney shows that the largest payments happened when the claimant was represented by a private attorney.

![image](https://user-images.githubusercontent.com/95050679/144334511-06b516d1-8024-4f95-af33-75c0b69a0f6a.png)


Boxplot in the figure below represents the analysis of payment vs severity and each box plot represents an estimate of the severity of damage to the patient.

![image](https://user-images.githubusercontent.com/95050679/144334530-57527e08-815a-4250-9360-170adf282454.png)

Labels for the boxplots – (From Left to right) are as below:
Death, grave damage, major permanent damage, significant permanent damage, minor permanent damage, major temporary damage, minor temporary damage, insignificant damage, emotional trauma.


**Major Findings**

•	The highest claim payment the insurance company made was $6.89M with the minimum being $11,500 and the median payment was $168,400 

•	The maximum payment made was represented by a private attorney 

•	From the 118 payments made, 43% were private insurance, 31% were unknown, 13.5% were Medicaid/Medicare payments, 10% had no insurance to cover the payments and 2.5% were covered by the worker’s compensation 

•	Two-thirds of the payments had private attorney representation 

•	Minor and major temporary damage had majority of payments represented by 57.6% depending on the severity. 9.3% of payments were due to death

•	Majority of payments were for patients between 23 to 60 years. Payment saw a slight decline as patients’ age increase 

•	Age, severity, and private attorney are factors that affect payment

**Recommendations for Action**

•	Clients seeking private attorney representation may trigger the need to increase premiums as data suggested most payments were represented by private attorney and had maximum payments

•	With 31% of the insurance unknown, a system should be put in place to identify insurance types for all clients























