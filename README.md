# Capstone Project - Sociodemographic Data and COVID-19 Vaccine Hesitancy in the US

## Team
* **Square:** Setting up the repository, communication protocols (Aarani)
* **Circle:** Creating the database (Hayden)
* **Triangle:** Machine learning model (Amy)
* **X:** Technolgies overview (Tiffany)

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
4. How can this analysis inform to vaccine implementation strategies within an Ontario context?

## Technology
**Data Cleaning and Analysis:** Python version 3.7.6 (Visual Studio Code and Jupyter Notebook) with Python Libraries used to clean data and perform exploratory analysis (Pandas, numpy, flask, SQLAlchemy)

**Database Storage:** SQL (Postgres & pgAdmin) is the database we intend to use, and we will integrate Flask to display the data.

**Machine Learning:** SciKitLearn is the Machine Learning library we'll be using to create a Random Forest classifier. 

**Dashboard:** In addition to using a Flask template, we will also integrate D3.js for a fully functioning and interactive dashboard. 

## Machine Learning Model
To predict vaccination hesitancy, our team has decided to use a Random Forest model (supervised, regression) primarily due to the number of feature inputs. Our plan consists of using approximately 70% of the dataset to train the machine learning algorithm, and then test the accuracy and predictive effectiveness on the remaining 30%. This model will determine the importance of each feature as it relates to vaccination hesitancy, providing a base for:
* Identifying features that have a larger impact (and therefore act as a barrier)
* The application of this model for other populations preparing for vaccination rollout

## Database Structure

### Data Cleaning
