--Explorar la tabla “menu_items” para conocer los productos del menú
 	--Realizar consultas para contestar las siguientes preguntas:
 		--1. Encontrar el número de artículos en el menú = "32 articulos"

SELECT * FROM menu_items

SELECT COUNT (DISTINCT item_name) AS ARTICULOS_MENU
FROM menu_items;

		--2. ¿Cuál es el artículo menos caro y el más caro en el menú? = "Mas barato edamame y Mas caro Shrimp Scampi" 
SELECT * FROM menu_items
	ORDER BY price ASC LIMIT 1
	
SELECT * FROM menu_items
	ORDER BY price DESC LIMIT 1
	
		--3. ¿Cuántos platos americanos hay en el menú? = "6"
SELECT COUNT (*) FROM menu_items
	WHERE category='American';

		--4. ¿Cuál es el precio promedio de los platos? = "13.29"
SELECT round(AVG(price),2) AS promedio_precio
	FROM menu_items;

 	--Realizar consultas para contestar las siguientes preguntas:
 		--● ¿Cuántos pedidos únicos se realizaron en total? = "12234"

SELECT * FROM order_details

SELECT COUNT (DISTINCT order_details_id) AS PEDIDOS_UNICOS
FROM order_details;

 		--● ¿Cuáles son los 5 pedidos que tuvieron el mayor número de artículos?

SELECT order_id, COUNT (*) AS total_articulos
FROM order_details
GROUP BY order_id 
ORDER BY total_articulos DESC
LIMIT 5;
 
 		--● ¿Cuándo se realizó el primer pedido y el último pedido? primer pedido 2023-01-01 y ultimo pedido 2023-03-31
SELECT * FROM order_details
	ORDER BY order_date ASC LIMIT 1
	
SELECT * FROM order_details
	ORDER BY order_date DESC LIMIT 1
		 
 		--● ¿Cuántos pedidos se hicieron entre el '2023-01-01' y el '2023-01-05' = 702 pedidos

SELECT COUNT (*) AS total_pedidos
FROM order_details
WHERE order_date BETWEEN '2023-01-01' AND '2023-01-05';

--usar ambas tablas para conocer  la reaccion de los clientes respecto al menu = Los productos mas vendidos son la hamburguesa y el adamame y los menos vendidos son los potstickers y chiken tacos
 
SELECT * FROM menu_items --analisis exploratorio tabla1
SELECT * FROM order_details --analisis exploratorio tabla2

SELECT
	m.menu_item_id,
	m.item_name,
	COUNT (o.item_id) AS cantidad_vendida
FROM
	menu_items AS m
LEFT JOIN
	order_details AS o
ON
	m.menu_item_id = o.item_id
GROUP BY 
	m.menu_item_id,m.item_name
ORDER BY
	cantidad_vendida DESC;

--ANALISIS ADICIONAL PARA IDENTIFICAR 5 PUNTOS CLAVE QUE PUEDAN SER DE UTILIDAD PARA LOS DUEÑOS
--mis preguntas
--cual es la categoria que mas se vende
------La categoria mas vendida es la Asian (3470),sinembargo las otras 3 categorias tienen ventas muy similares (italian 2949,mexican 2945 y american 2734)

SELECT
	m.category,
	COUNT (o.item_id) AS cantidad_vendida
FROM
	menu_items AS m
LEFT JOIN
	order_details AS o
ON
	m.menu_item_id = o.item_id
GROUP BY 
	m.category
ORDER BY cantidad_vendida DESC;

--cuanto gasta en promedio cada cliente en una orden? $29.79

SELECT AVG(order_total) AS average_order_amount
FROM (
    SELECT od.order_id, SUM(mi.price) AS order_total
    FROM order_details od
    JOIN menu_items mi ON od.item_id = mi.menu_item_id
    GROUP BY od.order_id
) AS order_totals;

--productos que suelen comprarse juntos: en primer lugar tenemos hamburguer y edamame pero tmb podemos observar que edamame aparece en 3 de las primeras 5 combinaciones

SELECT 
    mi1.item_name AS item_1,
    mi2.item_name AS item_2,
    COUNT(*) AS times_ordered_together
FROM order_details od1
JOIN order_details od2 
    ON od1.order_id = od2.order_id 
    AND od1.item_id < od2.item_id
JOIN menu_items mi1 ON od1.item_id = mi1.menu_item_id
JOIN menu_items mi2 ON od2.item_id = mi2.menu_item_id
GROUP BY mi1.item_name, mi2.item_name
ORDER BY times_ordered_together DESC;

--que horario es el mas lleno de pedidos: 12 ,13, 18, 19 y 16 respresentan el top 5

SELECT 
    EXTRACT(HOUR FROM order_time) AS hour_of_day,
    COUNT(*) AS total_orders
FROM order_details
GROUP BY EXTRACT(HOUR FROM order_time)
ORDER BY total_orders DESC;
	

