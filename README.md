# Personal Project

## 1. Gun Violence 2014-2021 Analysis

### Overview

* This dataset is an aggregated information of over three thousand incidents of gun violence within the United States from Jan 2014 through Sep 2021.
* Pulled from Kaggle: https://www.kaggle.com/konivat/us-gun-violence-archive-2014
* This dataset contain the following information:
    * incident_id: Unique id for each case
    * incident_date: Time when the incident happen
    * state: state where incident happen
    * city_or_county: city or county where incident happen
    * address: location of the incidents
    * killed: total number of victims killed
    * injured: total number of victims injured
* Tools use: Excel, MySQL, Tableau

### Cleaning Data

#### Reformat Date:

* The incident_date format is set as text, so I have to reformat the column to make it easier for analysis.

##### Before
<img src="/img/Before.jpg">

##### After
<img src="/img/After.jpg">


#### Check for duplicate, and remove non-value data

* In this step, I check for duplicate, incorrect, and missing values.
* Save the cleaned dataset as Clean-US-Gun-Violence.csv.

### Import Data into MySQL Workbench and working on the Analysis

<img src="/img/SQL.jpg">

#### Getting the total of death & injured by Year

<img src="/img/Byyear.jpg">

#### Getting the total of death & Injured by States

<img src="/img/ByState.jpg">

#### Exporting each result into separated CSV files for visualization- Tableau

<img src="/img/csvfile.jpg">

### Visualize data in Tableau

link to tableau: https://public.tableau.com/app/profile/co.nhan/viz/U_SGunViolence2014-2021/Dashboard1

#### What I learned from the analysis:

* 2020 has the most injured victims due to gun violence.
* In 2021, even though the amount of injured victims due to gun violence fell by ~20%, the amount of death has increased by nearly 3%.
* Illinois, Texas, and California have the most death and injured victims in the country.
