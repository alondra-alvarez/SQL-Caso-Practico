# SQL-Caso-Practico
## CONTEXTO  
En este repositorio se presenta el análisis mediante SQL de las transacciones de un restaurante "Sabores del mundo"  para evaluar un nuevo menú que lanzaron a principios de año
## OBJETIVO
Identificar cuales son los productos del menú que han tenido más exito y cuales son los que menos han gustado a los clientes ,Identificando areas de oportunidad y en general aprovechar al maximo sus datos para optimizar sus ventas
## PASOS GENERALES
1. Crear la base de datos utilizando el archivo  _create_restaurant_db.sql_
2. Explorar la tabla ***“menu_items”*** para conocer los productos del menú
3. Realizar consultas para conocer las respuestas a las siguientes preguntas:
   - Encontrar el número de artículos en el menú.
   - ¿Cuál es el artículo menos caro y el más caro en el menú?
   - ¿Cuántos platos americanos hay en el menú?
   - ¿Cuálesel precio promedio de los platos?
  
4. Explorar la tabla ***“order_details”*** para conocer los datos que han sido recolectados
5. Realizar consultas para conocer las respuestas a las siguientes preguntas:
   - ¿Cuántos pedidos únicos se realizaron en total?
   - ¿Cuáles son los 5 pedidos que tuvieron el mayor número de artículos?
   - ¿Cuándoserealizó el primer pedido y el último pedido?
   - ¿Cuántos pedidos se hicieron entre el '2023-01-01' y el '2023-01-05'?
  
6. Usar ambas tablas para conocer la reacción de los clientes respecto al menú.
   - Realizar un left join entre entre ***order_details*** y ***menu_items*** con el identificador
 ***item_id(tabla order_details)*** y ***menu_item_id(tabla menu_items)***.

7. Realiza un análisis adicional utilizando este join entre las tablas.  El
 objetivo es identificar 5 puntos clave que puedan ser de utilidad para los dueños del
 restaurante en el lanzamiento de su nuevo menú

## CONCLUSIONES
1. Despues de un analisis exploratorio se obtuvo lo siguiente:  
   - Son un total de 32 articulos en el menu con un precio promedio de ***<ins>$13.29<ins>*** de los cuales el mas caro es ***Shrimp Scampi*** con un precio de ***<ins>$19.95<ins>*** y el mas barato es ***Edamame*** con un costo de ***<ins>$5.00<ins>***
   - El menu ofrece diferentes platillos provenientes de diferentes paises de los cuales ***6*** entran la categoria de ***<ins>"american"<ins>***
     
4. Despues del analisis de transacciones se obtuvo lo siguiente:  
   - Se hicieron un total de ***12,234*** pedidos unicos entre el ***1 de enero al 31 de marzo*** de los cuales el mayor numero de articulos por pedido fueron ***<ins>14 articulos<ins>***  
   - Los productos más vendidos son la ***<ins>hamburguesa y el adamame<ins>*** y los menos vendidos son los ***<ins>potstickers y chiken takos<ins>***  
   - De las ***4*** categorias de platillos las ventas se presentaron en el siguiente orden donde el primero es el que mas ventas tuvo ***<ins>Asian,Italian,Mexican,American<ins>***
   - 
   
