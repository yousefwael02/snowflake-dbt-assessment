# snowflake-dbt-assessment

This repository contains a dbt project that demonstrates building and testing models on Snowflake.

## Project Overview

- **Warehouse**: Snowflake  
- **Transformation tool**: dbt  
- **Models included**:
  - `stg_orders`: Staging model for orders joined with customers  
  - `customer_revenue`: Aggregate revenue per customer using orders + lineitems  

## Environment Setup

### 1. Clone the repository
```bash
git clone https://github.com/yousefwael02/snowflake-dbt-assessment.git
cd snowflake-dbt-assessment
```
### 2. Create and Activate the virtual environment (optional)
```bash
python -m venv venv
source venv/bin/activate 
```
### 3. Install dbt for Snowflake
```bash
pip install dbt-snowflake
```

## Running the Project

### Build models
```bash
dbt run
```
### Run tests
```bash
dbt test
```
### Generate documentation
```bash
dbt docs generate
dbt docs serve
```
## Model Descriptions

### 1. stg_orders

Purpose: Cleans and stages order data for downstream use
Logic:
Joins the orders table with the customer table on c_custkey
Selects relevant order and customer fields
Provides a clean dataset for further transformations

### 2. customer_revenue

Purpose: Calculates total revenue per customer
Logic:
Joins orders with lineitem using o_orderkey.
Computes revenue using the formula:
revenue = l_extendedprice * (1 - l_discount)
Groups by c_custkey and includes the customer name.
Produces one row per customer with their total revenue.

Project by **Yousef Wael** for the dbt + Snowflake assessment
