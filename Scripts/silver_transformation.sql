CREATE STREAMING LIVE TABLE silver.fact_sales
COMMENT "Fact Sales data cleaing "
AS 
SELECT 
    CAST(sale_id AS INT) AS sale_id,
    TO_DATE(order_date , 'dd/MM/yyyy') AS order_date,
    CAST(customer_id AS INT) AS customer_id,
    CAST(product_id AS INT) AS product_id,
    CAST(quantity AS INT) AS quantity,
    CAST(discount AS INT) AS discount,
    CAST(region_id AS INT) AS region_id,
    CAST(channel AS STRING) AS channel,
    CAST(promo_code AS STRING) AS promo_code
FROM
    STREAM(lakeflow_dlt.bronze.fact_sales);
    


CREATE STREAMING LIVE TABLE silver.customers
COMMENT "Customer data cleaing "
AS 
SELECT 
    CAST(customer_id AS INT) AS customer_id,
    CAST(first_name AS STRING) AS first_name,
    CAST(last_name AS STRING) AS last_name,
    CAST(email AS STRING) AS email,
    TO_DATE(join_date, 'dd/MM/yyyy') AS join_date,
    CAST(vip AS STRING) AS vip
FROM
    STREAM(lakeflow_dlt.bronze.customers);



CREATE STREAMING LIVE TABLE silver.products
COMMENT "Products data cleaing "
AS 
SELECT 
    CAST(product_id AS INT) AS product_id,
    CAST(product_name AS STRING) AS product_name,
    CAST(category AS STRING) AS category,
    CAST(price AS INT) AS price,
    CAST(in_stock AS INT) AS in_stock
FROM
    STREAM(lakeflow_dlt.bronze.products);



CREATE STREAMING LIVE TABLE silver.regions
COMMENT "Regions data cleaing "
AS 
SELECT 
    CAST(region_id AS INT) AS region_id,
    CAST(region_name AS STRING) AS region_name,
    CAST(country AS STRING) AS country
FROM
    STREAM(lakeflow_dlt.bronze.regions);