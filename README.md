# AZURE-ETL-PIPELINE
## OVERVIEW
### This project implements an end-to-end ETL (Extract, Transform, Load) pipeline using Azure services. The workflow extracts data from GitHub, processes it through Azure Data Factory, transforms it using Databricks, and finally loads it into Azure Synapse Analytics. The data flows through Bronze, Silver, and Gold layers within a Delta Lake architecture.
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## Architecture

## Extract (Bronze Layer)

### . Data is extracted from GitHub using Azure Data Factory (ADF).

### . A dynamic pipeline is built using:

### . Copy Activity (to transfer data)

### . Metadata Activity (to extract file metadata)

### . ForEach Activity (to loop through multiple files)

### . If Activity (to implement conditional logic)

### . Data is stored in the Bronze Layer in Azure Data Lake Storage (ADLS) Gen2 as Delta tables.

## Transform (Silver Layer)

### Databricks processes raw data from the Bronze layer.

### Transformations include:

### . Data cleaning

### .Deduplication

###. Schema enforcement

### Processed data is stored in the Silver Layer in ADLS.

## Load (Gold Layer)

### . Final transformed data is loaded into Azure Synapse Analytics using Azure Data Factory.

### . Data is stored in the Gold Layer in ADLS for reporting and analytics.

## Technologies Used

## Azure Data Factory (ADF) – Orchestrates the ETL pipeline.

## Azure Data Lake Storage (ADLS) Gen2 – Stores data in Bronze, Silver, and Gold layers.

## Databricks (Apache Spark) – Performs data transformations.

## Azure Synapse Analytics – Loads and queries the final processed data.

## GitHub – Source of raw data.

## Steps to Reproduce

## 1. Extract Data from GitHub

### Use Azure Data Factory to create a Copy Activity.

### Connect to the GitHub API.

### Store extracted data in Bronze Layer (ADLS Gen2).

## 2. Process Data Using Databricks

### Read data from Bronze using Spark DataFrames.

### Perform transformations 

### Write transformed data to Silver Layer in ADLS as Delta tables.

## 3. Load Data into Azure Synapse

### Use ADF pipeline to move processed data from Silver to Gold.

### Store data in Azure Synapse Analytics for analysis.
