INSERT INTO d_customers(
	first_name,
	last_name,
	age,
	email,
	country,
	postal_code,
	pet_name,
	pet_breed,
	pet_category)
SELECT DISTINCT 
    customer_first_name, 
    customer_last_name, 
    customer_age, 
    customer_email,           
    customer_country,             
    customer_postal_code,
	customer_pet_name,
	customer_pet_breed,
	pet_category
FROM mock_data_1;

INSERT INTO d_sellers(
	first_name, 
	last_name, 
	seller_email, 
	seller_country,
	postal_code)
SELECT DISTINCT 
    seller_first_name, 
    seller_last_name, 
    seller_email,            
    seller_country,            
    seller_postal_code      
FROM mock_data_1;

INSERT INTO d_products(
    name, 
    category, 
    price, 
    quantity, 
    weight, 
    color, 
    size, 
    brand, 
    material, 
    description, 
    rating, 
    reviews, 
    release_date, 
    expiry_date
)
SELECT DISTINCT
    product_name, 
    product_category, 
    product_price, 
    product_quantity, 
    product_weight, 
    product_color,          
    product_size, 
    product_brand, 
    product_material,        
    product_description, 
    product_rating, 
    product_reviews, 
    product_release_date, 
    product_expiry_date
FROM mock_data_1;

INSERT INTO d_stores(
	name,
	location,
	city,
	state,
	country,
	phone,
	email)
SELECT DISTINCT 
    store_name, 
    store_location, 
    store_city, 
    store_state, 
    store_country, 
    store_phone,      
    store_email       
FROM mock_data_1;


INSERT INTO d_suppliers(
	name,
	contact,
	email,
	phone,
	address,
	city,
	country)
SELECT DISTINCT 
    supplier_name, 
    supplier_contact, 
    supplier_email,     
    supplier_phone,     
    supplier_address, 
    supplier_city, 
    supplier_country
FROM mock_data_1;

INSERT INTO f_sales (
  customer_id,
  seller_id,
  product_id,
  store_id,
  supplier_id,
  sell_date,
  sale_quantity,
  sale_total_price
)
SELECT
  customer.customer_id,
  seller.seller_id,
  product.product_id,
  store.store_id,
  supplier.supplier_id,
  DATE(md.sale_date),
  md.sale_quantity,
  md.sale_total_price
FROM mock_data AS md
JOIN d_customers AS customer
  ON md.customer_email = customer.email
JOIN d_sellers AS seller
  ON md.seller_email = seller.seller_email
JOIN d_products AS product
  ON md.product_name = product.name
 AND DATE(md.product_release_date) = product.release_date
JOIN d_stores AS store
  ON md.store_name = store.name
 AND md.store_email = store.email
JOIN d_suppliers AS supplier
  ON md.supplier_email = supplier.email;



