<<<<<<< HEAD
﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "S_P_500" (
    "Date" date   NOT NULL,
    "Close" int   NOT NULL,
    "Volume" int   NOT NULL,
    CONSTRAINT "pk_S_P_500" PRIMARY KEY (
        "Date"
     )
);

CREATE TABLE "Houses_Market" (
    "Date" date   NOT NULL,
    "Madian_price" int   NOT NULL,
    "Total_Number_Sale" int   NOT NULL,
    CONSTRAINT "pk_Houses_Market" PRIMARY KEY (
        "Date"
     )
);

CREATE TABLE "Monthly_inflation" (
    "Date" date   NOT NULL,
    "Value" int   NOT NULL,
    CONSTRAINT "pk_Monthly_inflation" PRIMARY KEY (
        "Date"
     )
);

CREATE TABLE "Monthly_retail_sales" (
    "Date" date   NOT NULL,
    "Value" int   NOT NULL,
    CONSTRAINT "pk_Monthly_retail_sales" PRIMARY KEY (
        "Date"
     )
);

CREATE TABLE "Monthly_Unemployment" (
    "Date" date   NOT NULL,
    "Value" int   NOT NULL,
    CONSTRAINT "pk_Monthly_Unemployment" PRIMARY KEY (
        "Date"
     )
);

CREATE TABLE "Covid_Cases" (
    "Date" date   NOT NULL,
    "Covid_New_Cases" int   NOT NULL,
    "Covid_Death" int   NOT NULL,
    CONSTRAINT "pk_Covid_Cases" PRIMARY KEY (
        "Date"
     )
);

CREATE TABLE "NASDAQ" (
    "Date" date   NOT NULL,
    "Close" int   NOT NULL,
    "Volume" int   NOT NULL,
    CONSTRAINT "pk_NASDAQ" PRIMARY KEY (
        "Date"
     )
);

ALTER TABLE "S_P_500" ADD CONSTRAINT "fk_S_P_500_Date" FOREIGN KEY("Date")
REFERENCES "NASDAQ" ("Date");

ALTER TABLE "Houses_Market" ADD CONSTRAINT "fk_Houses_Market_Date" FOREIGN KEY("Date")
REFERENCES "S_P_500" ("Date");

ALTER TABLE "Monthly_inflation" ADD CONSTRAINT "fk_Monthly_inflation_Date" FOREIGN KEY("Date")
REFERENCES "Houses_Market" ("Date");

ALTER TABLE "Monthly_retail_sales" ADD CONSTRAINT "fk_Monthly_retail_sales_Date" FOREIGN KEY("Date")
REFERENCES "Monthly_inflation" ("Date");

ALTER TABLE "Monthly_Unemployment" ADD CONSTRAINT "fk_Monthly_Unemployment_Date" FOREIGN KEY("Date")
REFERENCES "Monthly_retail_sales" ("Date");

ALTER TABLE "Covid_Cases" ADD CONSTRAINT "fk_Covid_Cases_Date" FOREIGN KEY("Date")
REFERENCES "Monthly_Unemployment" ("Date");

ALTER TABLE "NASDAQ" ADD CONSTRAINT "fk_NASDAQ_Date" FOREIGN KEY("Date")
REFERENCES "Covid_Cases" ("Date");

=======
﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "S_P_500" (
    "Date" date   NOT NULL,
    "Close" int   NOT NULL,
    "Volume" int   NOT NULL,
    CONSTRAINT "pk_S_P_500" PRIMARY KEY (
        "Date"
     )
);

CREATE TABLE "Houses_Market" (
    "Date" date   NOT NULL,
    "Madian_price" int   NOT NULL,
    "Total_Number_Sale" int   NOT NULL,
    CONSTRAINT "pk_Houses_Market" PRIMARY KEY (
        "Date"
     )
);

CREATE TABLE "Monthly_inflation" (
    "Date" date   NOT NULL,
    "Value" int   NOT NULL,
    CONSTRAINT "pk_Monthly_inflation" PRIMARY KEY (
        "Date"
     )
);

CREATE TABLE "Monthly_retail_sales" (
    "Date" date   NOT NULL,
    "Value" int   NOT NULL,
    CONSTRAINT "pk_Monthly_retail_sales" PRIMARY KEY (
        "Date"
     )
);

CREATE TABLE "Monthly_Unemployment" (
    "Date" date   NOT NULL,
    "Value" int   NOT NULL,
    CONSTRAINT "pk_Monthly_Unemployment" PRIMARY KEY (
        "Date"
     )
);

CREATE TABLE "Covid_Cases" (
    "Date" date   NOT NULL,
    "Covid_New_Cases" int   NOT NULL,
    "Covid_Death" int   NOT NULL,
    CONSTRAINT "pk_Covid_Cases" PRIMARY KEY (
        "Date"
     )
);

CREATE TABLE "NASDAQ" (
    "Date" date   NOT NULL,
    "Close" int   NOT NULL,
    "Volume" int   NOT NULL,
    CONSTRAINT "pk_NASDAQ" PRIMARY KEY (
        "Date"
     )
);

ALTER TABLE "S_P_500" ADD CONSTRAINT "fk_S_P_500_Date" FOREIGN KEY("Date")
REFERENCES "NASDAQ" ("Date");

ALTER TABLE "Houses_Market" ADD CONSTRAINT "fk_Houses_Market_Date" FOREIGN KEY("Date")
REFERENCES "S_P_500" ("Date");

ALTER TABLE "Monthly_inflation" ADD CONSTRAINT "fk_Monthly_inflation_Date" FOREIGN KEY("Date")
REFERENCES "Houses_Market" ("Date");

ALTER TABLE "Monthly_retail_sales" ADD CONSTRAINT "fk_Monthly_retail_sales_Date" FOREIGN KEY("Date")
REFERENCES "Monthly_inflation" ("Date");

ALTER TABLE "Monthly_Unemployment" ADD CONSTRAINT "fk_Monthly_Unemployment_Date" FOREIGN KEY("Date")
REFERENCES "Monthly_retail_sales" ("Date");

ALTER TABLE "Covid_Cases" ADD CONSTRAINT "fk_Covid_Cases_Date" FOREIGN KEY("Date")
REFERENCES "Monthly_Unemployment" ("Date");

ALTER TABLE "NASDAQ" ADD CONSTRAINT "fk_NASDAQ_Date" FOREIGN KEY("Date")
REFERENCES "Covid_Cases" ("Date");

>>>>>>> main
