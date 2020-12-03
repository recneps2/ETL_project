# ETL Project

## Proposal 

Due to the currently ongoing global coronavirus pandemic, this year's presidental election was unlike any in recorded history. With restrictions in place across the country, both candidates, Joe Biden and Donald Trump, were forced to alter their campaign strategies throughout the course of the year, however, while now President-elect Biden opted against holding any public rallies in an effort to avoid mass gatherings, President Trump chose to continue holding massive rallies leading up to the election.

Considering everything that's transpired, our team decided to determine whether there was any correlation between holding a presidental campaign event and seeing a spike in COVID-19 cases — i.e., after two weeks, was there a noticeable spike in COVID-19 cases in cities/states where Biden visited versus where Trump visited?


# ETL Final Report

### Extract

For the extraction, our team obtained daily COVID-19 data from Kaggle, utilizing datasets that monitored new cases on city, state and county levels. For the campaign visits, we pulled data from a recent Chicago Tribune article. 

All of our data was exported as .csv files; COVID-19 data was exported to "Counties.csv" and campaign visit data was exported to "pres_rallies_2020.csv".

Data Sources:
* Kaggle - NY-TIMES COVID-19 USA Dataset (https://www.kaggle.com/imoore/us-covid19-dataset-live-hourlydaily-updates)
* Chicago Tribune - Campaign trail tracker: Where Trump, Biden and their running mates have traveled in presidential race’s final weeks (https://www.chicagotribune.com/politics/ct-viz-presidential-campaign-trail-tracker-20200917-edspdit2incbfnopchjaelp3uu-htmlstory.html)

### Transform

For the transformation, both of the datasets needed to be cleaned and then joined. 

First, we cleaned rally data using pandas to only display the presidential candidates, the date of their visit, the month number, and the month name. 

We then needed to combine the rally data with the COVID-19 data, and using another jupyter notebook (covid_ave_growth_per_month.ipynb); we combined our data frames and pulled only the data for the election months. After that, we created a new data frame displaying our cases on the day of a presidential visit, the number of cases 14 days later, and the percentage change in cases over two two-week windows.

### Load

After the transformation, we took our cleaned .csv data and loaded it into a relational database. Our goal was to make the data usable for developers after the ETL pipeline.

We designed a normalized schema that can be utilized for applications that examine statistics before and after election campaign visits. We tracked changes in the rate of COVID-19 case growth, and we provide the structure and tables to analyze additional variables pre and post campaign visits (e.g., number of COVID-19 deaths).

We stored variables (pre_rally_date, post_rally_date) to allow the window size to be changed. This schema allows any number of election candidates and is structured to further easily track candidate details such as political party.

![ER-Diagram](https://github.com/recneps2/ETL_project/blob/main/QuickDBD-ERD.png?raw=true)

### Challenges

Since the presidential candidates were visiting specific cities, the only major challenge we faced was that data was not always available for non-major cities, which is why we had to keep our focus on the county/state level. 

## Team Members: 
Morgan Spencer, Rohan Patel, Wesley Lo
