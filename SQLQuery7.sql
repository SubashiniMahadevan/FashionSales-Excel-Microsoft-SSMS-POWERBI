--Data Manipulation Query

--Total Number of customers

SELECT COUNT(DISTINCT customer_id) AS total_customer FROM customer;

--New customers and recurring customers

SELECT COUNT(DISTINCT customer_id) AS recurring_customers,(SELECT COUNT(DISTINCT customer_id) FROM customer WHERE previous_purchases =0) As new_customers FROM customer WHERE previous_purchases<>0;

--what is statewise population of customers in USA.
SELECT COUNT(customer_id) As customer_count, location FROM customer GROUP BY location ORDER By customer_count DESC;

--Count Of total products sold in each category
SELECT COUNT(DISTINCT s.product_id) AS products_count,p.category FROM sales s INNER JOIN product p ON s.product_id=p.product_id GROUP BY p.category;

--Which product category contributes more to the total sales amount
SELECT TOP 1 SUM(s.purchase_amount) AS total_sales_amount,p.category FROM sales s INNER JOIN product p ON s.product_id=p.product_id GROUP BY p.category ORDER BY total_sales_amount DESC;

--Total sales amount for each category
SELECT SUM(s.purchase_amount) AS total_sales_amount,p.category FROM sales s INNER JOIN product p ON s.product_id=p.product_id GROUP BY p.category ORDER BY total_sales_amount DESC;


-- TOP 5 Products preference in clothing category

SELECT TOP 5 CONCAT('$', CAST(SUM(s.purchase_amount) AS VARCHAR(30))) AS total_sales_amount,p.product_name FROM sales s INNER JOIN product p ON s.product_id=p.product_id  WHERE p.category='Clothing' GROUP BY p.product_name ORDER BY total_sales_amount DESC;

--What are the Top 2 color preferences in the following products Shirt,Blouse,Dress,Sweater in the clothing category
----------------------------------------------------------------------------------------------------------

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

----------------------------------------------------------------------------------------------------------

--Top 5 products preference in Accessories
SELECT TOP 5 CONCAT('$',CAST(SUM(s.purchase_amount)AS VARCHAR(30))) AS total_sales_amount,p.product_name FROM sales s INNER JOIN product p ON s.product_id=p.product_id  WHERE p.category='Accessories' GROUP BY p.product_name ORDER BY total_sales_amount DESC;

--What are the Top 2 color preferences in the following products Jewelry,Belt,Sunglasses,Scarf,Hat in the Accessories category
-------------------------------------------------------------------------------------------
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


------------------------------------------------------------------------------------------------
--What is the name of the TOP 10 products that is sold the most in the year 2023 and its count
SELECT TOP 10 COUNT(DISTINCT s.product_id) AS product_sold_most,p.product_name FROM sales s INNER JOIN product p ON s.product_id=p.product_id GROUP BY p.product_name ORDER BY product_sold_most DESC;

--TOP 15  Expensive Products
SELECT TOP 15 CONCAT('$', CAST(MAX(s.purchase_amount) AS VARCHAR(30)))AS expensive_product,p.product_name FROM sales s INNER JOIN product p ON s.product_id=p.product_id GROUP BY p.product_name ORDER BY expensive_product DESC;


-- Product name which has the minimum purchase_amount
SELECT TOP 1 CONCAT('$', CAST(MIN(s.purchase_amount) AS VARCHAR(30)))AS low_price_product,p.product_name FROM sales s INNER JOIN product p ON s.product_id=p.product_id GROUP BY p.product_name ORDER BY low_price_product;


--List 5 Product with high discount value
SELECT TOP 5 CONCAT('$', CAST(MAX(s.discount_value) AS VARCHAR(30))) AS discount,p.product_name FROM sales s INNER JOIN product p ON s.product_id=p.product_id GROUP BY p.product_name ORDER BY discount DESC;

-- Name 10 Product's that are sold without discount through out the year and in high demand

SELECT TOP 10 CONCAT('$', CAST(MIN(s.discount_value) AS VARCHAR(30))) AS discount,p.product_name FROM sales s INNER JOIN product p ON s.product_id=p.product_id  GROUP BY p.product_name ORDER BY discount ASC;

-- Highly rated Product and Its full details including delivery details
SELECT MAX(s.review_rating) AS highly_rated_product, p.product_name,s.shipping_type FROM sales s INNER JOIN product p On s.product_id=s.product_id GROUP BY p.product_name,s.shipping_type ORDER BY highly_rated_product DESC;

--Customers details with previous purchases

SELECT previous_purchases,customer_id FROM customer WHERE previous_purchases=50;

--TOP 10 Jwelery color preferred by Female Customers and is in high demand
SELECT TOP 10 COUNT(s.product_id) As product_count,p.product_name,p.color FROM sales s INNER JOIN product p ON s.product_id=p.product_id WHERE p.product_name='jewelry' GROUP BY p.product_name,p.color ORDER BY product_count DESC ;


--What jacket colors are the most prefered by the customers and list the top 5 colors?

SELECT TOP 5 COUNT(s.product_id) As product_count,p.product_name,p.color FROM sales s INNER JOIN product p ON s.product_id=p.product_id WHERE p.product_name='jacket' GROUP BY p.product_name,p.color ORDER BY product_count DESC ;




