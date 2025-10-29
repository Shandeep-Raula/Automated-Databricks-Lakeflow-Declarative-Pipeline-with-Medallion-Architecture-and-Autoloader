CREATE STREAMING LIVE TABLE bronze.fact_sales
COMMENT "Raw fact sales from volume to bronze schema"
AS 
SELECT * FROM cloud_files
('/Volumes/lakeflow_dlt/landing_zone/fact_and_dim_file/fact_sales/',
'csv',
map('header', 'true')
);

CREATE STREAMING LIVE TABLE bronze.regions
COMMENT "Raw dim regions from volume to bronze schema"
AS 
SELECT * FROM cloud_files
('/Volumes/lakeflow_dlt/landing_zone/fact_and_dim_file/dim_region/',
'csv',
map('header', 'true')
);


CREATE STREAMING LIVE TABLE bronze.products
COMMENT "Raw dim products from volume to bronze schema"
AS 
SELECT * FROM cloud_files
('/Volumes/lakeflow_dlt/landing_zone/fact_and_dim_file/dim_products/',
'csv',
map('header', 'true')
);


CREATE STREAMING LIVE TABLE bronze.customers
COMMENT "Raw dim customers from volume to bronze schema"
AS 
SELECT * FROM cloud_files
('/Volumes/lakeflow_dlt/landing_zone/fact_and_dim_file/dim_customers/',
'csv',
map('header', 'true')
);



