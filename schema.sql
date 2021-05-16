--drtop table if exists
drop table if exists Vaccine_estimated_target_Hesitancy, feature_Vaccine_Hesitancy; 

--create tables for dataset into data base
create table Vaccine_estimated_target_Hesitancy (
            FIPS_Code                                                 int not null primary key,
            County_Name                                               varchar,
            States                                                    varchar,
            Estimated_hesitant                                        float,
			Estimated_strongly_hesitant                               float,
            State_Code                                                varchar,
            County_Boundary                                           varchar,
            State_Boundary                                            varchar
);

create table feature_Vaccine_Hesitancy (
            FIPS_Code                                                 int not null primary key,
            County_Name                                               varchar,
            States                                                    varchar,
            Percent_Hispanic                                          float,
            Percent_non_Hispanic_American_IndianAlaska_Native         float,
            Percent_non_Hispanic_Asian                                float,
            Percent_non_Hispanic_Black                                float,
            Percent_non_Hispanic_Native_HawaiianPacific_Islander      float,
            Percent_non_Hispanic_White                                float,
			Geographical_Point                                        varchar,
            Social_Vulnerability_Index		                 		  float,
            SVI_Category                                              varchar,
            CVAC_level_of_concern_for_vaccination_rollout             float,
            CVAC_Level_Of_Concern                                     varchar,
            Percent_adults_fully_vaccinated_against_COVID19           float,
            State_Code                                                varchar,
            County_Boundary                                           varchar,
            State_Boundary                                            varchar
);

--merge 2 dataset into one table
drop table if exists merged_Vaccine_Hesitancy;
create table merged_Vaccine_Hesitancy as
select 
		b.*,
		a.Estimated_hesitant,
		a.Estimated_strongly_hesitant
from Vaccine_estimated_target_Hesitancy as a
inner join feature_Vaccine_Hesitancy as b
on a.FIPS_Code = b.FIPS_Code
;