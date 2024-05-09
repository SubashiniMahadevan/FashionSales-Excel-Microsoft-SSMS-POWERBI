# Fashion Sales Data Analysis Project

## Overview
This project aims to analyze fashion sales data using Microsoft Excel, Microsoft SQL Server, and Power BI. The dataset contains information about customer purchases, product details, and sales transactions in the fashion industry.

## Contents
1. Dataset Description
2. Analysis Tools
3. Usage
4. Contributing


## Dataset Description
The Fashion sales dataset includes the following columns:
- Customer ID
- Age
- Gender
- Location
- Subscription Status
- Discount Value
- Season
- Year
- Purchase Amount
- Payment Type
- Shipping method
- Product Name
- Category
- Size
- Color
- Previous Purchases

## Analysis Tools
This project utilizes the following tools for Data Analysis:
- **Microsoft Excel**: Initial data exploration, basic analysis, and data cleaning.
- **Microsoft SQL Server**: Data warehousing, complex querying, and advanced data manipulation.
- **Power BI**: Data visualization, dashboard creation, and interactive reporting.

## Usage
To replicate the analysis or explore the dataset further, follow these steps:

1. **Excel Analysis**:
   - Open the provided Excel file containing the dataset.
   - Explore the data using Excel's features for filtering, sorting, and basic analysis.

2. **Microsoft SQL Server**:
   - Import the dataset into Microsoft SQL Server.
   - Write SQL queries to perform complex analysis, aggregations, and join operations.
   - Use SQL Server Management Studio or any SQL client to execute queries and view results.

3. **Power BI**:
   - Connect Power BI to the dataset in Microsoft SQL Server or import the Excel file directly.
   - Create visualizations, reports, and dashboards to gain insights from the data.
   - Utilize Power BI's interactive features to drill down into specific aspects of the data.
 <br>
 <br>
   
### Excel:
<br>

Dataset contains nearly 4000 rows.

Data Cleaning and Data Preparation is done in Excel and it is mentioned in the below points

- Customer_id is already available in the dataset, have added the columns sale_id and product_id.
- sale_id is similar to customer_id like the usual id columns in whole numbers. Sale_id will be the primary key for the sales entity and Foreign key column in the Product entity.
- product_id is created by concatenating product size, color, product name abbreviation(code for every product) and category code(unique code for category). Ex) P001-D1-S. Product_id will be primary key column for the product entity.
- Gender column has the values - "Female" and "F" in the dataset. Values are update to have Female and Male as gender.
- For some data gender was blank so changed them to "Not available" entries in the dataset.
- Payment type column also needed some changes - it was "Debit" and "Debit card" in the dataset and "credit card" and "Credit", so changed it to "Debit card" and "Credit card" to maintain uniformity.
- Discount value column had blank values so changed them to 0.
- Previous Purchases was "nothing" - it is changed to 0, because it is a integer values representing the count of previous purchases.
  
<br>
<br>

![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/5d65b7dc-867c-4324-bd0c-6f3164a6d7ab)
<br>
<br>

![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/ed2303d2-8d8f-4e27-9feb-3900b9cc4b98)
<br>
<br>


![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/9dbae324-5a84-466e-9ca4-ddbeafb874b9)
<br>
<br>


![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/7edafa3f-7df6-4ffc-937a-486c03646223)
<br>
<br>

![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/5c6d3cd4-6ac6-4a1e-8e7f-50b32a379ab1)
<br>
<br>

![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/de8c074d-7f3b-4833-a522-9c8cb5bdcb2e)
<br>
<br>

Promotion Code column has the values "yes" but the corresponding entry for the discount value column is zero or blank so it is obvious that promotion code has been used by the customer for changing the shipping type for faster delivery. 
<br>
<br>


![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/3a359899-8959-40e4-8fea-5b079598f015)
<br>
<br>

### Microsft SQL Server Management Studio (SSMS) - Transact SQL for Data Analysis and Data Manipulation:

<br>

**Database Design:**
<br>
<br>

- First step for designing a database is deciding the Entities and Attributes.And representing the database design(schema) in diagrams like Chen's Notaion and Entity relationship diagram.
- Primary key and Foreign columns are decided,Cardinality and Ordinality of the relationships are also represented in the diagrams.
- Appropriate Data types and size of the data type is declared and mentioned for each attributes(columns) in the ERD diagram.
- Creating the Database and its Objects(Tables, Constraints) and Inserting the data from the Fashion sales dataset using Query.
  <br>
  <br>

| Entity 1   | Entity 2   | Cardinality | Ordinality | Primary Key / Foreign Key                                                |
|------------|------------|-------------|------------|--------------------------------------------------------------------------|
| customer   | sales      | one to many | mandatory  | 1. customer_id (Primary key) in customer.                                 |
|            |            |             |            | 2. FK_customer - Foreign key constraint in sales.                         |
| sales      | product    | one to many | mandatory  | 1. sale_id (Primary key in sales).                                        |
|            |            |             |            | 2. FK_sales - Foreign key constraint in product.                          |
|            |            |             |            | 3. product_id (Primary key in product).                                   |

<br>
<br>

**Chen's Notation:**
  <br>
  <br>

![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/1a68618f-5a8e-4809-bd7e-5105a093cc0f)

  <br>
  
  [Link to Chen's Notation](https://online.visual-paradigm.com/community/share/fashion-sales-1r2q7rygvy)
  <br>
  <br>

  **Entity Relationship Diagram:**
  <br>

  ![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/494eb0f4-31fd-4ad8-a450-98abf9472015)
  <br>
  
  [Link to ERD](https://online.visual-paradigm.com/community/share/fashion-sales-erd-1r2rgpoc7i)
  <br>
  <br>

![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/69face6a-5af8-4967-9f77-5e6037db49d3)
<br>
<br>

![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/cbe68a04-a2bb-4b1f-8937-48d8abcc84a7)
<br>
<br>

![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/1a78df8f-e282-42e4-905f-9a4e5d63a8ec)
<br>
<br>

![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/c710e0f3-c9ed-4d63-94f6-929bc99d700f)
<br>
<br>


**Data Types:**
<br>

| Attribute            | Data Type     |
|----------------------|---------------|
| sale_id              | INT           |
| product_id           | VARCHAR(30)   |
| purchase_amount      | INT           |
| season               | VARCHAR(30)   |
| year                 | INT           |
| review_rating        | DECIMAL(10,1) |
| shipping_type        | VARCHAR(30)   |
| promo_code_used      | VARCHAR(30)   |
| payment_method       | VARCHAR(30)   |
| discount_value       | INT           |
| product_name         | VARCHAR(30)   |
| category             | VARCHAR(30)   |
| size                 | VARCHAR(30)   |
| color                | VARCHAR(30)   |
| customer_id          | INT           |
| age                  | INT           |
| gender               | VARCHAR(30)   |
| country              | VARCHAR(30)   |
| location             | VARCHAR(30)   |
| subscription_status  | VARCHAR(30)   |
| previous_purchases   | INT           |

<br>
<br>


**Data Manipulation:**
<br>

<p>1. Total number of Customers in the Database</p>
<br>

```sql
SELECT COUNT(DISTINCT customer_id) AS total_customer FROM customer;
```
<br>

![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/3892a7fd-245d-4ab7-b282-6db2f953a4fa)
<br>
<br>

<p>2. What is the Total number of New customers and Recurring Customers?</p>
<br>

```sql
SELECT COUNT(DISTINCT customer_id) AS recurring_customers,(SELECT COUNT(DISTINCT customer_id) FROM customer WHERE previous_purchases =0) As new_customers FROM customer WHERE previous_purchases<>0;
```
<br>

![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/245f37c2-c626-45cd-a95a-7c33990af567)
<br>
<br>

<p>3. What is Statewise Population of Customers in USA?</p>
<br>

```sql
SELECT COUNT(customer_id) As customer_count, location FROM customer GROUP BY location ORDER By customer_count DESC;
```
<br>
<br>

![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/11824ea2-eb0d-4a8a-bd2d-c994f2fa908b)
<br>
<br>

<p>4. What is the Count Of Total Products sold in each Category?</p>
<br>

```sql
SELECT COUNT(DISTINCT s.product_id) AS products_count,p.category FROM sales s INNER JOIN product p ON s.product_id=p.product_id GROUP BY p.category;
```
<br>

![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/c2467d7d-79e3-4dad-af66-77a580482604)
<br>
<br>

<p>5. Which product Category contributes more to the Total sales Amount?</p>
<br>

```sql
SELECT TOP 1 SUM(s.purchase_amount) AS total_sales_amount,p.category FROM sales s INNER JOIN product p ON s.product_id=p.product_id GROUP BY p.category ORDER BY total_sales_amount DESC;
```
<br>

![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/cedb88bb-bf37-4ce3-a2ca-9523fd842c4c)
<br>
<br>

<p>6. What is the Total Sales amount for each category?</p>
<br>

```sql
SELECT SUM(s.purchase_amount) AS total_sales_amount,p.category FROM sales s INNER JOIN product p ON s.product_id=p.product_id GROUP BY p.category ORDER BY total_sales_amount DESC;
```
<br>

![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/71294199-5fd9-4605-87f6-a6caaefbb089)
<br>
<br>

<p>7. TOP 5 Products preference in Clothing Category?</p>
<br>

```sql
SELECT TOP 5 CONCAT('$', CAST(SUM(s.purchase_amount) AS VARCHAR(30))) AS total_sales_amount,p.product_name FROM sales s INNER JOIN product p ON s.product_id=p.product_id  WHERE p.category='Clothing' GROUP BY p.product_name ORDER BY total_sales_amount DESC;
```
<br>

![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/a10041d5-acdd-4be3-a0b1-7dbd7b362b24)
<br>
<br>

<p>8. What are the Top 2 color preferences in the following products Shirt,Blouse,Dress,Sweater in the clothing category?</p>
<br>

```sql
SELECT 
    product_name,
	color,
	product_count
    
FROM (
    SELECT 
        COUNT(s.product_id) AS product_count,
        p.color,
        p.product_name,
        ROW_NUMBER() OVER (PARTITION BY p.product_name ORDER BY COUNT(s.product_id) DESC) AS color_rank
    FROM 
        sales s
    INNER JOIN 
        product p ON s.product_id = p.product_id
    WHERE 
        p.product_name IN ('Shirt', 'Blouse', 'Pants', 'Dress', 'Sweater')
    GROUP BY 
        p.product_name, 
        p.color
) AS top_colors
WHERE 
    color_rank <= 2
ORDER BY 
    product_name,
    color_rank;
```
<br>
<br>

![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/da601163-84b1-452c-9e2f-5ddb9d298a37)
<br>
<br>

<p>9. Top 5 Accessories - products that are highly preferred by the Customers</p>
<br>

```sql
SELECT TOP 5 CONCAT('$',CAST(SUM(s.purchase_amount)AS VARCHAR(30))) AS total_sales_amount,p.product_name FROM sales s INNER JOIN product p ON s.product_id=p.product_id  WHERE p.category='Accessories' GROUP BY p.product_name ORDER BY total_sales_amount DESC;
```
<br>

![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/0640952a-5f23-4e29-b0b9-7f0c0c140e91)
<br>
<br>

<p>10. What are the Top 2 color preferences in the following Accessories products  - Jewelry,Belt,Sunglasses,Scarf,Hat ? </p>
<br>

```sql
SELECT 
    product_name,
    color,
    product_count
FROM (
    SELECT 
        COUNT(s.product_id) AS product_count,
        p.color,
        p.product_name,
        ROW_NUMBER() OVER (PARTITION BY p.product_name ORDER BY COUNT(s.product_id) DESC) AS color_rank
    FROM 
        sales s
    INNER JOIN 
        product p ON s.product_id = p.product_id
    WHERE 
        p.product_name IN ('Jewelry', 'Belt', 'Sunglasses', 'Scarf', 'Hat')
    GROUP BY 
        p.product_name, 
        p.color
) AS top_colors
WHERE 
    color_rank <= 2
ORDER BY 
    product_name,
    color_rank;
```
<br>

![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/d2521dd0-d603-4759-b9f1-fb9f63b9e66d)
<br>
<br>

<p>11. What is the Name of the TOP 10 products that is sold the most in the year 2023 and its count?</p>
<br>

```sql
SELECT TOP 10 COUNT(DISTINCT s.product_id) AS product_sold_most,p.product_name FROM sales s INNER JOIN product p ON s.product_id=p.product_id GROUP BY p.product_name ORDER BY product_sold_most DESC;
```
<br>

![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/d645bd34-9b1b-4851-9ef9-1bc5bf95c8ca)
<br>
<br>

<p>12. What are the TOP 15 Expensive Products?</p>
<br>

![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/d880fd7f-6b9b-4668-8511-dcccff9194a5)
<br>
<br>

<p>13. Retrieve the Product Name which has the minimum purchaseAamount</p>
<br>

```sql
SELECT TOP 1 CONCAT('$', CAST(MIN(s.purchase_amount) AS VARCHAR(30)))AS low_price_product,p.product_name FROM sales s INNER JOIN product p ON s.product_id=p.product_id GROUP BY p.product_name ORDER BY low_price_product;
```
<br>

![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/269f3557-bf5d-4134-b9ae-ae201328ca64)
<br>
<br>

<p>14. List 5 Product with High Discount value</p>
<br>

```sql
SELECT TOP 5 CONCAT('$', CAST(MAX(s.discount_value) AS VARCHAR(30))) AS discount,p.product_name FROM sales s INNER JOIN product p ON s.product_id=p.product_id GROUP BY p.product_name ORDER BY discount DESC;
```
<br>

![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/7296b1c5-170b-47e4-b067-fed30b22a09b)
<br>
<br>

<p>15. Name 10 Product's that are sold without discount through out the year and in high demand</p>
<br>

```sql
SELECT TOP 10 CONCAT('$', CAST(MIN(s.discount_value) AS VARCHAR(30))) AS discount,p.product_name FROM sales s INNER JOIN product p ON s.product_id=p.product_id  GROUP BY p.product_name ORDER BY discount ASC;
```
<br>

![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/2b5c8768-5667-4fba-ad9e-6241c9de0752)
<br>
<br>

<p>16. List the Highly Rated Product and Its full details including delivery details</p>
<br>

```sql
SELECT MAX(s.review_rating) AS highly_rated_product, p.product_name,s.shipping_type FROM sales s INNER JOIN product p On s.product_id=s.product_id GROUP BY p.product_name,s.shipping_type ORDER BY highly_rated_product DESC;
```
<br>

![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/cdae9fce-bcea-4f3c-aaac-78f08f4c62ba)
<br>
<br>

<p>17. Customers details with previous purchases</p>
<br>

```sql
SELECT previous_purchases,customer_id FROM customer WHERE previous_purchases=50;
```
<br>


![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/141af43e-695a-47d0-ae9c-fb27a53bcb6e)
<br>
<br>

<p>18. TOP 10 Jwelery color preferred by Customers and is in high demand</p>
<br>

```sql
SELECT TOP 10 COUNT(s.product_id) As product_count,p.product_name,p.color FROM sales s INNER JOIN product p ON s.product_id=p.product_id WHERE p.product_name='jewelry' GROUP BY p.product_name,p.color ORDER BY product_count DESC ;
```
<br>

![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/7314cf61-086b-48db-a8b1-ec09cd556c4e)
<br>
<br>

<p>19. What Jacket colors are the most prefered by the customers and list the top 5 colors?</p>
<br>

```sql
SELECT TOP 5 COUNT(s.product_id) As product_count,p.product_name,p.color FROM sales s INNER JOIN product p ON s.product_id=p.product_id WHERE p.product_name='jacket' GROUP BY p.product_name,p.color ORDER BY product_count DESC ;
```
<br>

![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/ab5927db-773d-4dc0-bbb5-54184e56ddff)
<br>
<br>

### POWERBI:
<br>

**Data Import:**
<br>

Get data by connecting to Microsft SQl Server (live connection) and retrive data using queries.
<br>

![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/08303b4d-d337-45b3-84c6-9fa66ceeabdd)
<br>
<br>

![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/eecc300d-9868-4c30-94c9-945f691428d1)
<br>
<br>

![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/5df76e43-5196-4ab0-a3b3-d770eb158d6c)
<br>
<br>

![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/34d70c17-f28e-4322-89ad-eb7e816a8bb7)
<br>
<br>

![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/8c7f68f8-f269-4bd1-a57f-d7ce38325e2d)
<br>
<br>

![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/3a6a7711-9661-4072-b140-9502afbf67e2)
<br>
<br>

![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/22899960-073f-4e8e-833f-2b1ad71f9334)
<br>
<br>


**Data Modelling:**
<br>

![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/094a1f64-fb58-466e-a433-8556aee34cdb)
<br>
<br>

**Data transformation:**
<br>

Format changes done for the purcahse amount field and changed the format to Currency and $ is the currency type. 

<br>

![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/1758dd73-bb1d-4d31-8f55-dfc13bd44655)
<br>
<br>

![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/ba8f9992-35ec-4b33-a2a2-e2a9a2879e41)
<br>
<br>

**Data Visualization:**
<br>

Report Creation:
<br>

- Create a multipage report
- Report should have a title
- Create a card displaying the total sales amount
- Create a card displaying total number of customers.
- Create a card displaying Total number of new customers.
- Create a card displaying Total number of Recurring customers.
- Create a Pie chart to show the Products Count by category.
- Create a map to display the Customers Population by Location.
- Create a tree map to Display the Top 5 Products Sold in Clothing Category because that is most sold Product category 
- Create another tree map to display the Top 5 Products sold in Accessories category.
- Create a Visualization to display the Top 10 Producst By Cost
- Create Funnel chart to visualize Total Sales by category.
- Create a Card to display the Total Discount Value for year 2023.
- Display the trend of the sales for every season in a Line Graph.
- Top 10 Products Sold Without Discount throughout the year.
- Create a Table to list the Highly Rated Product names, their average price and shipping method.
- Pie Graph to show Percentage contribution of Each Shipping method to the total.
- Include a Background image.
- Bar Graph to display the Top 5 Products Sold in Clothing and Accessories Category and their colors(5 colors and its sales in %).
- Short Summary about the Findings in the report

<br>
<br>


**Report:**
<br>
<br>

![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/05c427dc-9bc2-42ad-974b-e79d99b94369)
<br>
<br>

![image](https://github.com/SubashiniMahadevan/FashionSales-Excel-Microsoft-SSMS-POWERBI/assets/168095179/ae25ddc5-0b7b-4463-888f-26aff8d9c09d)







































