Select * from covid_cases
order by date asc 

Select * from monthly_inflation

Select * from Houses_market

Select * from monthly_retail_sales

Select * from monthly_unemployment

Select * from nasdaq
Select * from s_p_500



Select houses_market.date,   houses_market.madian_price, 
 houses_market.homes_sold, monthly_retail_sales.retail_sales, monthly_unemployment.unemployment_rate, nasdaq.nasdaq_close, nasdaq.nasdaq_volume,
  s_p_500. s_p_500_close,  s_p_500. s_p_500_volume, monthly_inflation.Date, monthly_inflation.inflation_expectation, covid_cases.covid_new_cases, covid_cases.covid_death
From houses_market


left join monthly_retail_sales on houses_market.date = monthly_retail_sales.date
left join monthly_unemployment on monthly_retail_sales.date = monthly_unemployment.date
left join nasdaq on monthly_unemployment.date = nasdaq.date
left join  s_p_500 on nasdaq.date =  s_p_500.date
left join monthly_inflation on s_p_500.date = monthly_inflation.date 
left Join covid_cases On s_p_500.date = covid_cases.date
order by houses_market.Date





CREATE TABLE Covid_Cases1 (
    Date Date,
    Covid_New_Cases varchar(255),
    Covid_Death varchar(255),
    PRIMARY KEY (
        Date
     )
);

CREATE TABLE Monthly_Unemployment (
    Date Date,
    Unemployment_Rate DECIMAL   NOT NULL,
   PRIMARY KEY (
        Date
     )
);


CREATE TABLE Monthly_inflation (
    Date Date,
    Inflation_Expectation DECIMAL   NOT NULL,
      PRIMARY KEY (
        Date
     )
);

CREATE TABLE NASDAQ (
  	Date Date,
  	 NASDAQ_Close DECIMAL   NOT NULL,
   	NASDAQ_Volume varchar(255),
     PRIMARY KEY (
        Date
     )
);

CREATE TABLE Monthly_retail_sales (
    Date Date,
    Retail_Sales varchar(255),
   PRIMARY KEY (
        Date
     )
);

CREATE TABLE S_P_500 ( 
    Date Date,
    S_P_500_Close DECIMAL   NOT NULL,
    S_P_500_Volume varchar(255),
     PRIMARY KEY (
        Date
     )
);



CREATE TABLE Houses_Market (
    Date Date,
    Madian_Price varchar(255),
    Homes_Sold varchar(255),
    PRIMARY KEY (
        Date
		)
	);