CREATE schema gold;

create view gold.calender
AS
select * FROM
OPENROWSET
(
        bulk 'https://aradhanastorage.blob.core.windows.net/silver/calender/',
        format ='parquet'   
) as query

create view gold.customer
AS
select * FROM
OPENROWSET
(
        bulk 'https://aradhanastorage.blob.core.windows.net/silver/customer/',
        format ='parquet'   
) as query1

create view gold.product_category
AS
select * FROM
OPENROWSET
(
        bulk 'https://aradhanastorage.blob.core.windows.net/silver/product_category/',
        format ='parquet'   
) as query2

create view gold.product_subcategory
AS
select * FROM
OPENROWSET
(
        bulk 'https://aradhanastorage.blob.core.windows.net/silver/product_subcategory/',
        format ='parquet'   
) as query3

