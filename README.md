# coderhouse_proyectoSQL
Proyecto de SQL de Coderhouse

Descripción de la base de datos

Crear una base de datos de un e-commerce, donde se almacene los productos que se van a vender, como así también almacenar usuarios, que se van a registrar con sus datos y van a acceder a sus favoritos, sus ordenes de compra y ver su carrito de compras mediante una contraseña. A su vez van a poder dejar tanto reseñas como calificaciones a dichos productos. La idea es ampliar las tablas para abarcar todos estos aspectos.

El archivo DER_SQL.drawio.drawio.pdf contiene el diagrama de entidad-relacion.

La creacion de las tablas se hace con el script diagramaBurgos.sql.

La insercion de datos se hace con el script ScriptInsBurgos.sql

Las views de esta base de datos estan en el script ScriptVisBurgos.sql

La funciones estan en el script FormatoBurgos.sql, la primer funcion "CANTIDAD_FAVORITOS_USUARIOS" me da como resultado la cantidad total de favoritos del usuario que se pase como parametro. La segunda funcion "TOTAL_CARRITO_COMPRAS" me da como resultado el total de gasto sumando todo los carritos del usuario que se pase como parametro.

Las SPs estan en el script StoredBurgos.sql, donde el primer SP me trae la lista ordenada ya sea de forma ascedente o descendente de cualquier columna de la tabla productos, podemos setear tanto la columna como la forma de orden antes de llamar a la SP. En la segunda SP elimina un usuario por su ID, seteando el ID y haciendo la llamada al SP.

Los Triggers estan en el script TriggersBurgos.sql, se crea una tabla "LOG_AUDITORIA" donde se almacenara tanto los insert como los update que se hagan a las tablas productos y usuarios. El primer trigger se activa despues de hacer un insert en la tabla productos, almacenando en "LOG_AUDITORIA" los campos nombre, stock, precio, qué accion se realiza, el nombre de la tabla donde se realiza el insert, el usuario que realiza dicho insert y fecha/hora. El segundo trigger se activa antes de hacer un update en la tabla productos, almacenando en "LOG_AUDITORIA" los campos nuevos de nombre, stock y precio, dentro del campo "CAMPOANTERIOR_CAMPONUEVO" se almacena los valores antiguos junto con los nuevos valores, tambien qué accion se realiza, el nombre de la tabla donde se realiza el insert, el usuario que realiza dicho insert y fecha/hora. El tercer trigger se activa despues de hacer un insert en la tabla usuarios, almacenando en "LOG_AUDITORIA" los campos email, passoword, dni, qué accion se realiza, el nombre de la tabla donde se realiza el insert, el usuario que realiza dicho insert y fecha/hora. El cuarto trigger se activa antes de hacer un update en la tabla usuarios, almacenando en "LOG_AUDITORIA" los campos nuevos de email, passoword y dni, dentro del campo "CAMPOANTERIOR_CAMPONUEVO" se almacena los valores antiguos junto con los nuevos valores, tambien qué accion se realiza, el nombre de la tabla donde se realiza el insert, el usuario que realiza dicho insert y fecha/hora.