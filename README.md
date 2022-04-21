# Final Project
## Predicting Unemployment Rates

### Team members
- Andy Herron
- Viasha Isler
- Kuldip Puri

## What will happen to the unemployment rate post pandemic?
The US ecomony has gone through some dramatic changes over the last several years. The hardest hit was the labor force.
Non-essential workers were hit hard during national shutdowns. This caused many employers to resort to remote learning or even early retirment.
Did these major adjustments affect the housing market, stock market, and overall way of living? What will happen to the employment 
rates as the nation recovers from a 2 year pandemic?  We will attempt to predict the unemployment rate taking into consideration 
a broad spectrum of economic factors including stock market data, real estate sales, advance retail sales, and inflation rates.
In addition to these indicators of the overal US economy, we will include data on Covid-19 cases and deaths as the pandemic will continue 
to exert an influence on the lives of Americans.  The Covid-19 pandemic is a world-wide issue, but we are focusing on the United States.

### Data Sources
- E-Trade
	- S&P 500 monthly closing value and volume
	- NASDAQ monthly closing value and volume
- AlphaVantage.co
	- Unemployment rate
	- Inflation expectation rate
	- Advance Retail Sales figures
- REDFIN.com
	- National home sales
	- National median value of homes sold
- World Health Organization Coronavirus (COVID-19) Dashboard
	- New Covid-19 cases per month
	- Covid-19 deaths per month

### Definitions

The Standard and Poor's 500, or simply the S&P 500, is a stock market index tracking the performance of 500 large companies listed 
on stock exchanges in the United States. It is one of the most commonly followed equity indices. As of December 31, 2020, more than 
$5.4 trillion was invested in assets tied to the performance of the index.  The S&P 500® is widely regarded as the best single gauge of large-cap U.S. equities. 

The Nasdaq Stock Market is an American stock exchange based in New York City. It is ranked second on 
the list of stock exchanges by market capitalization of shares traded, behind the New York Stock Exchange

What Are Retail Sales? The term retail sales refers to an economic metric that tracks consumer demand for finished goods. 
This figure is a very important data set as it is a key monthly market-moving event. Retail sales are reported each month by the 
U.S. Census Bureau and indicate the direction of the economy.

The unemployment rate represents the number of unemployed as a percentage of the labor force. Labor force data are restricted to people 
16 years of age and older, who currently reside in 1 of the 50 states or the District of Columbia, who do not reside in institutions 
(e.g., penal and mental facilities, homes for the aged), and who are not on active duty in the Armed Forces.

### ERD
![QuickDBD Schema](https://github.com/Kuldeep200/Covid-19/blob/main/Images/QuickDBD-export.png)

---
### Presentation slides
https://docs.google.com/presentation/d/1j2Rb0Y6Q8VL9Oo-Jq1XGB1Rkk3FcLbvpb-Rgs1qZKYs/edit?usp=sharing

### Tableau dashboard
https://public.tableau.com/app/profile/viasha.isler/viz/Unemployment_16503239596380/Dashboard1

---
### Evaluating the models:
*r2 (R Squared) - value ranges from 0 to 1, higher is better*\
*RMSE (Root Mean Squared Error) - lower is better*

Multiple linear regression\
r2 = -7.3\
RMSE = 2.78

LASSO regression\
r2 = -7.3\
RMSE = 2.78

Ridge (alpha = 1)\
r2 = -6.3\
RMSE = 2.61

Ridge (alpha = 100)\
r2 = -0.05\
RMSE = 0.99

ARIMA\
r2 = 1.18\
RMSE = 1.09

