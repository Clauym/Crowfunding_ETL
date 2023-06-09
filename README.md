# Crowfunding_ETL
## Project #2

This folder contains the following files:
- ETL_mini_Project.ipynb with the code used to manipulate the databases and create some new files
- Crowfunding_db_schema.sql with the schema of the PostgresSQL database
- Display data in tables.sql with the code that shows the data in the tables created in SQL
- Diagram_crowdfunding.png, diagram of the schema of the tables created

A subfolder called Resources contains the source files:
- crowfunding.xlsx
- contacts.xlsx 

and the outputs: 
- contacts.csv 
- campaign.csv
- categories.csv
- subcategories.csv

A subfolder called Images containing the squema and the results when we imported the data into the Postgres database. 

----
----
### Objective
For the ETL mini project, we were asked to work in groups of two to practice building an ETL pipeline and different methods to extract and transform the data. After transforming the data, we had to create four CSV files and use these to create an ERD and a table schema. Finally, we needed to upload the CSV files data into a Postgres database.

### Development
 
1. Using the file crowfunding.xlsx we review the names of columns, check the ids were unique, change the properties category and subcategory adding the prefixes "cat" and "scat". With this we proceed to create the files category.csv and subcategory.csv

2. After this we created a copy of the dataframe so the original data wasn't affected, we also changed the name of some columns and split in two the variable 'category and subcategory'. Then we merged the dataframes and drop the columns that weren't useful creating one new file: campaign.csv.

3. Lastly we worked with the file contacts.xlsx where we split the name and last names of the contacts, reorder columns and check the datatypes. With these changes done we created the contacts.csv file

4. Once we had the four csv files we created a diagram (showed below) for a new database called Crowdfunding_df. We also created the sql file defining the schema, created the tables, imported the data to these and verified our uploads (these can be found inside the images folder).

![Database Creation](Images/Database_and_tables.png)

5. At the end all the steps of the process were completed and the database with its tables succesfully created. 

![Diagram](Images/Diagram_crowfunding.png)

