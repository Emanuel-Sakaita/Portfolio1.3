Use BikeStores
SELECT
ord.order_id,
CONCAT(cus.first_name, ' ', cus.last_name) AS Customers_Name,
	cus.city, 
	cus.state,
	ord.order_date,
	SUM(ite.quantity ) AS Total_Units,
	SUM(ite.quantity* ite.list_price) AS Revenue,
	pro.product_name, 
	pc.category_name,
	st.store_name,
	CONCAT(sta.first_name, ' ', sta.last_name) As Sales_Rep
FROM sales.orders ord
JOIN sales.customers cus
ON ord.customer_id = cus.customer_id
JOIN sales.order_items ite
ON ord.order_id = ite.order_id
JOIN production.products pro
ON ite.product_id = pro.product_id 
JOIN production.categories pc
ON pc.category_id = pro.category_id
JOIN sales.stores st
ON ord.store_id = st.store_id
JOIN sales.staffs sta
ON ord.staff_id= sta.staff_id 
Group by
ord.order_id,
CONCAT(cus.first_name, ' ', cus.last_name),
	cus.city, 
	cus.state,
	ord.order_date,
	pro.product_name,
	pc.category_name,
	st.store_name,
	CONCAT(sta.first_name, ' ', sta.last_name)



	select*
	from sales.staffs






	