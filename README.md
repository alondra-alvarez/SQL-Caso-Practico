# SQL-Caso-Practico
## CONTEXTO  
En este repositorio se presenta el análisis mediante SQL de las transacciones de un restaurante "Sabores del mundo"  para evaluar un nuevo menu que lanzaron a principios de año
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

