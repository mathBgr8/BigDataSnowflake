SELECT customer_first_name, customer_last_name, COUNT(*) FROM public.mock_data
GROUP BY customer_first_name, customer_last_name
ORDER BY 2 DESC;

SELECT COUNT(*), store_email FROM mock_data_1 GROUP BY store_email
ORDER BY 1 desc;

SELECT product_description,id, COUNT(*) FROM public.mock_data_1
GROUP BY product_description,id
ORDER BY 3 desc;

SELECT COUNT(*) FROM public.mock_data_1
GROUP BY supplier_email
ORDER BY 1 desc;

SELECT supplier_email, sale_seller_id, store_name, COUNT(*) FROM public.mock_data_1
GROUP BY supplier_email, sale_seller_id, store_name
ORDER BY 4 desc;