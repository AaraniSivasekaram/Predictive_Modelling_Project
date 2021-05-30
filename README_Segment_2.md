# Capstone Project - Sociodemographic Data and COVID-19 Vaccine Hesitancy in the US

## Team
* **Square:** Machine learning models (Tiffany)
* **Circle:** Refine analysis; presentation and dashboard (Aarani)
* **Triangle:** Refine and connect the database (Amy)
* **X:** Dashboard (Hayden)

## Communication Protocols
* Group Slack channel created for quick and easy communications among all team members,
* Google document created for information sharing (ideas, data, roles),
* Additional zoom meeting time(s) determined outside of class hours (Saturdays and Sundays), and
* Next steps will be determined at the end of each class and/or meeting.

## Project Overview
**Topic:** An analysis of COVID-19 vaccine hesitancy.

**Topic selection rationale:** Given the global presence of COVID-19 and the implementation of recent months of vaccine rollout have been a positive change in Ontario, our team decided to look into vaccine hesitancy to understand this issue better.

**Data Description/Source:** Our team was able to secure a dataset from Kaggle that captures United States county-level data that includes sociodemographic data, geographic data and percentage of populations that are vaccine hesitant. The original dataset has 18 columns of sociodemographic and geographic indicators, and two columns for vaccine hesitancy outcomes. The dataset contains information from 3,142 counties in the United States. The data was obtained through Kaggle (https://www.kaggle.com/deepshah16/vaccine-hesitancy-for-covid19), and is sourced from https://www.data.gov.

**Questions:**
1. Based on the sociodemographic indicators available, are we able to predict vaccine hesitancy in US counties?
2. How do sociodemographic indicators affect vaccine hesitancy?
3. What barriers exist in vaccine implementation and how can these be mitigated?
4. How can this analysis inform vaccine implementation strategies within an Ontario context?

## Technology
**Data Cleaning and Analysis:** Python version 3.7.6 (Visual Studio Code and Jupyter Notebook) with Python Libraries used to clean data and perform exploratory analysis (Pandas, numpy, flask, SQLAlchemy)

**Database Storage:** SQL (Postgres & pgAdmin, AWS) is the database we intend to use, and we will integrate Flask to display the data.

**Machine Learning:** SciKitLearn is the Machine Learning library we'll be using to create a Linear Regression model and a Random Forest Regression model. Additionally, regression metrics will be used from this library.

**Dashboard:** In addition to using a Flask template, we will also integrate D3.js for a fully functioning and interactive dashboard. To host the web page, we will use HTML and CSS with embedded Tableau visualizations.

## Machine Learning Model & Preprocessing 
**Description of preliminary data preprocessing:** The [merged dataset](Resources/merged_Vaccine_Hesitancy.csv) was used for the [data preprocessing](preprocessing_dataset.ipynb) in preparation for the machine learning models. Unnecessary feature columns were dropped. Remaining feature columns only had 1 row found to have a null value which was filled with 0. The [clean dataset](Resources/vaccine_hesitancy_clean.csv) was then connected with the database. 

**Description of preliminary feature engineering and preliminary feature selection, including the decision-making process:** In the original dataset, two target outcomes were available: percent of population vaccine hesitant and percent of population strongly vaccine hesitant. Only one target outcome was chosen, **percent vaccine hesitant**, as it is unclear how the data/survey distinguished the difference between estimated vaccine hesitancy and estimated strong vaccine hesitancy. In the decision-making process for features, all columns with irrelevant/redundant data was removed. For example, the 'svi_category'(object) was a redundant column as the 'social_vulnerability_index'(float64) was available to use as a feature to train and test the models. 

**Description of how data was split into training and testing sets:** For the random forest regression model, the training set used 70% of the data and the testing set used the remaining 30% of the data. 

**Explanation of model choice, including limitations and benefits:** We chose to use supervised machine learning models as the dataset has a continuous target outcome that could be used for the model predictions within the numeric range of 0-1. 
* **Linear regression** was the first model used to predict the potential effects of sociodemographic indicators on vaccine hesitancy. It is beneficial as it is a fast and efficient model for initial machine learning analysis. A simple [linear regression](linear_regression.ipynb) was used first to test if the data is linear or non-linear. The results of the linear regression model indicated a more complex model should be used as the predictions were not very close to the original targets. The major limitation of linear regression model is non-linear data. 
* A **random forest regression** model was used to compare the efficiency and efficacy of the predictions to the linear regression model. The [random forest model](random_forest_regression.ipynb) will intake all feature columns to build several simple decision trees to predict the percent vaccine hesitancy. The random forest model is beneficial in this analysis as it can input multiple features in a fast and powerful algorithm which is not prone to overfitting. However, random forest is limited as all predictions are within the training set and it is unable to extrapolate values which are not within the dataset.

**Regression metrics:** 
* Mean Absolute Error
* Mean Squared Error
* R Squared Score
* Explained Variance Score 

## Database Integration


## Dashboard


## Presentation
Link to Google slides presentation: https://docs.google.com/presentation/d/191P9TQXqxlFJWycma8cBj7R7hkfTKrkr5KptemuW2LQ/edit?usp=sharing

