CREATE TABLE d_customers (
	customer_id SERIAL PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    age INT,
    email TEXT,
    country TEXT,
    postal_code TEXT,
	
	pet_name TEXT,
	pet_breed TEXT,
	pet_category TEXT
);

CREATE TABLE d_sellers (
	seller_id SERIAL PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    seller_email TEXT,
	
    seller_country TEXT,
	
    postal_code TEXT
);

CREATE TABLE d_products (
	product_id SERIAL PRIMARY KEY,
    name TEXT,
    category TEXT,
    price NUMERIC(10,2),
    quantity INT,
    weight NUMERIC(10,2),
    color TEXT,
    size TEXT,
    brand TEXT,
    material TEXT,
    description TEXT,
    rating NUMERIC(3,2),
    reviews INT,
    release_date DATE,
    expiry_date DATE
);

CREATE TABLE d_stores(
	store_id SERIAL PRIMARY key,
    name TEXT,
    location TEXT,
    city TEXT,
    country TEXT,
    phone TEXT,
    email TEXT,
    state TEXT
);

CREATE TABLE d_suppliers(
	supplier_id SERIAL PRIMARY KEY,
    name TEXT,
    contact TEXT,
    email TEXT,
    phone TEXT,
    address TEXT,
    city TEXT,
    country TEXT
);

CREATE TABLE f_sales (
	sale_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES d_customers(customer_id) ON DELETE CASCADE,
    seller_id INT REFERENCES d_sellers(seller_id) ON DELETE CASCADE,
    product_id INT REFERENCES d_products(product_id) ON DELETE CASCADE,
    store_id INT REFERENCES d_stores(store_id) ON DELETE CASCADE,
    supplier_id INT REFERENCES d_suppliers(supplier_id) ON DELETE CASCADE,
    sell_date DATE,
    sale_quantity INT,
    sale_total_price NUMERIC(10,2)
);
