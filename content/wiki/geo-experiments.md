+++
toc = true
hideReply = true
title = "Geo experiments"
author = "Lorenzo Drumond"
date = "2024-04-22T15:01:55"
tags = ["incrementality",  "experiments",  "segmentation",  "based",  "testing",  "analytics",  "marketing",  "AB",  "geo",  "medium"]
+++



Marketing incrementality measurement is a method of assessing how much marketing activities or interventions contribute to the desired outcomes. It involves comparing the outcomes of a group that received marketing exposure, known as the treatment group, with those of a group that did not, known as the control group.

To help you understand better, let’s look at some real-life business scenarios. In each scenario, there are examples of the treatment group and control group used for marketing incrementality measurement.

1. Email Marketing / Direct Mail Marketing:
  - Treatment Group: those receiving promotional emails/mails.
  - Control Group: those receiving no promotional emails/mails.
2. Online Advertising:
  - Treatment Group: those exposed to online ads.
  - Control Group: those exposed to no online ads.
3. Social Media Campaign:
  - Treatment Group: those seeing social media ads or campaigns.
  - Control Group: those seeing no social media ads or campaigns.
4. TVC Advertising:
  - Treatment Group: those exposed to TV commercials.
  - Control Group: those exposed no TV commercials
6. Discount/Coupons Offers:
  - Treatment Group: those receiving discount offers.
  - Control Group: those receiving no discount offers.

If you are a marketer of a company, you might want to know how effective your marketing campaigns are in driving sales, or other KPIs like clicks or conversions. Then you will need 2 groups for experiments. These are called treatment and control groups. They can be formed in many different ways depending on the context or your company’s needs. For example, you can use geographic regions (e.g. London vs Manchester); customer segments, (e.g. by unsupervised learning); or even random samples (e.g. by normal distribution) to form your treatment and control groups.

One of the methods that is often used to find out the performance difference geographically is called GeoX. GeoX stands for geo experiments. It tests how effective your marketing campaigns are in different places. You run your ads or promotions in some treatment areas and not in others (called control areas). Then you measure how the customers in those areas behave or react. For example, you can see if they buy more of your product, visit your website more often, or rate your brand higher. By comparing the results from the treatment and control areas, you can estimate the impact of your marketing activities.

Another method similar to GeoX is “causal lift studies”. Instead of classifying customers geographically, Causal lift studies segment the customers by their propensity score. The propensity score is to measure of how likely a customer is to respond to your campaign based on the criteria you set. It uses logistic regression for the inferences. By comparing the response metric of the two groups, you can estimate the lift or “incrementality” of your campaign.

Both GeoX and causal lift studies are popular methods for measuring marketing incrementality, however, in this article, we will focus more on GeoX and how to work it in Python.


Now you know what is GeoX, it’s time to get our hands dirty and experiment with example data and Python script.

Imagine there is a company called “EntzTech” that specializes in selling innovative tech gadgets. They have recently launched a new product called “AutoX” that enhances home automation and makes your home “smarter”. They want to know how well their marketing works in different places, so they do an experiment.

They pick 100 customers from three places: A, B, and C. These places are similar in terms of population, income, and culture. These places also like technology and home automation a lot. These customers get special ads and offers for AutoX to make them want to buy it.

They also pick 100 customers from three other places: D, E, and F. These customers don’t get any special ads or offers for AutoX. They are supposed to buy it naturally without any influence.

They collect data on how many customers buy AutoX from both groups. They use the GeoX testing method to analyze the data. They compare the buying rates for both groups and do a math test, called a t-test, to see if the difference is real or just random.

They use a number called p-value and a rule called 95% confidence level to decide if the difference is real or not. This helps them know how good their marketing is in making customers buy AutoX.

```python
np.random.seed(42)

treatment_data = pd.DataFrame({
    'region': np.random.choice(['A', 'B', 'C'], size=100),
    'conversion': np.random.binomial(1, 0.2, size=100)
})

control_data = pd.DataFrame({
    'region': np.random.choice(['D', 'E', 'F'], size=100),
    'conversion': np.random.binomial(1, 0.1, size=100)
```

First, we fabricate the data of the treatment group consisting of customers from regions ‘A’, ‘B’, ‘C’, and the control group consisting of customers from regions ‘D’, ‘E’, ‘F’.

```python
treatment_conversion_rate = treatment_data['conversion'].mean()
control_conversion_rate = control_data['conversion'].mean()
```

Then we calculate conversion rates for treatment and control groups.

```python
_, p_value = stats.ttest_ind(treatment_data['conversion'], control_data['conversion'], equal_var=False)

confidence_level = 0.95

if p_value < (1 - confidence_level):
    result_significance = "Statistically significant"
else:
    result_significance = "Not statistically significant"

if treatment_conversion_rate > control_conversion_rate:
    better_group = "Treatment group"
else:
    better_group = "Control group"
```

With a predefined confidence level of 95%, the script checks if the p-value is less than 0.05 to determine if the result is statistically significant. If the result is significant, it means that the observed differences are unlikely to be a random result, and we reject the null hypothesis.

Furthermore, the script compares the conversion rates of the treatment and control groups to identify which group performed better. If the treatment group’s conversion rate is higher than the control group’s conversion rate, it will conclude that the treatment group performed better. Otherwise, it is stated that the control group performed better.


```
Treatment Conversion Rate: 19.00%
Control conversion rate: 9.00%
p-value: 0.0419
Result significance: Statistically significant
Treatment group performed better.
```

From the above outcome, we now know that the treatment group had a conversion rate of 19.00%, while the control group had a conversion rate of 9 %.

The p-value obtained from the t-test is 0.0419, which is smaller than the significance level of 0.05. Therefore, the result is statistically significant, indicating that there is a significant difference between the two groups.

We can also conclude that the treatment group performed better in terms of conversion rate compared to the control group, with a higher conversion rate of 19.00%.

However, it is important to note that this is a simplified case based on some fabricated data for demonstration purposes only. In real life, it is crucial to carefully design experimental groups. It is important to collect valid data and consider other possible determining factors when drawing a conclusion. In our example here, we assume all the cities have similar populations, incomes, and cultures. If either one of these assumptions fails to hold, we can not draw a conclusion that easily, because the statistically significant difference could be caused by the failed assumption.

The full script is here.
```python
import pandas as pd
import numpy as np
from scipy import stats

np.random.seed(42)

treatment_data = pd.DataFrame({
    'region': np.random.choice(['A', 'B', 'C'], size=100),
    'conversion': np.random.binomial(1, 0.2, size=100)

control_data = pd.DataFrame({
    'region': np.random.choice(['D', 'E', 'F'], size=100),
    'conversion': np.random.binomial(1, 0.1, size=100)
})

treatment_conversion_rate = treatment_data['conversion'].mean()
control_conversion_rate = control_data['conversion'].mean()

_, p_value = stats.ttest_ind(treatment_data['conversion'], control_data['conversion'], equal_var=False)

confidence_level = 0.95

if p_value < (1 - confidence_level):
    result_significance = "Statistically significant"
else:
    result_significance = "Not statistically significant"

if treatment_conversion_rate > control_conversion_rate:
    better_group = "Treatment group"
else:
    better_group = "Control group"

print(f'Treatment conversion rate: {treatment_conversion_rate:.2%}')
print(f'Control conversion rate: {control_conversion_rate:.2%}')
print(f'p-value: {p_value:.4f}')
print(f'Result significance: {result_significance}')
print(f'{better_group} performed better.')
```


Congratulations! You have gone through the tutorial and learned GeoX.

The testing results show that the treatment group, who got the targeted marketing campaigns for the “AutoX” product, converted more customers than the control group. This means that the marketing campaigns worked well and improved the conversion rate.

This insight helps EntzTech to allocate their marketing resources more efficiently to the regions where the treatment group (regions A, B, and C) performed better. They can improve their marketing strategies, customize their messages to fit the specific needs and wants of those regions, and keep increasing sales and market share for their cutting-edge “AutoX” product.

By doing GeoX testing and analyzing the results, EntzTech gains a deeper understanding of the regional variations in conversion rates, allowing them to make data-driven decisions. They can make smarter choices, optimize their marketing efforts and maximize their business potential.

Finally, thank you for taking the time to read through this article. If you

1. are interested, you can download the full script here: https://github.com/entzyeung/towardsdatascience/blob/main/01_%20satellite/satellite_geo_analysis_london_brighton.ipynb
2. are interested in supporting me to write more about data science or machine learning, please share this with your data science friends, and follow me.
Your support and encouragement serve as motivation for me to continue contributing to the community.

To ensure transparency, I want to emphasize that supporting me will not affect the price for you. However, approximately half of the subscription fees directly benefit me. Your consideration in supporting me is greatly appreciated! If you have any questions, please feel free to reach out to me on LinkedIn.

## References
