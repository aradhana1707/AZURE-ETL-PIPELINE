create master key encryption by password='ara@1';

create database scoped credential cred_ara
WITH
     identity='managed identity'

CREATE EXTERNAL DATA SOURCE source_gold
WITH (
    LOCATION = 'https://aradhanastorage.blob.core.windows.net/gold/',
    CREDENTIAL = cred_ara  -- Ensure the managed identity has storage permissions
);

 create external file format format_parquet
 WITH(
    FORMAT_TYPE=PARQUET,
    DATA_COMPRESSION='org.apache.hadoop.io.compress.SnappyCodec'
 )

CREATE EXTERNAL TABLE gold.extcalender
WITH
(
    LOCATION = 'extcalender/',  
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.calender;

select * from gold.extcalender;

CREATE EXTERNAL TABLE gold.extcustomer
WITH
(
    LOCATION = 'extcustomer/',  
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.customer;


CREATE EXTERNAL TABLE gold.extproduct_category
WITH
(
    LOCATION = 'extproduct_category/',  
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.product_category;

CREATE EXTERNAL TABLE gold.extproduct_subcategory
WITH
(
    LOCATION = 'extproduct_subcategory/',  
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.product_subcategory;
