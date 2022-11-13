# coderhouse_proyectoSQL
Proyecto de SQL de Coderhouse

Descripción de la base de datos

Crear una base de datos de un e-commerce, donde se almacene los productos que se van a vender, como así también almacenar usuarios, que se van a registrar con sus datos y van a acceder a sus favoritos, sus órdenes de compra y ver su carrito de compras mediante una contraseña. A su vez van a poder dejar tanto reseñas como calificaciones a dichos productos. La idea es ampliar las tablas para abarcar todos estos aspectos.
Agregué 3 tablas más de marcas, categorías y reseñas, faltaría agregar datos en la tabla reseñas, que está en proceso.

El archivo DER_SQL2.1drawio.pdf contiene el diagrama de entidad-relación.

La creación de las tablas se hace con el script diagramaBurgos.sql.

La inserción de datos se hace con el script ScriptInsBurgos.sql.

Las views de esta base de datos están en el script ScriptVisBurgos.sql. La primera vista "favoritos" me muestra todos los favoritos por usuario. La segunda vista "comics" me muestra todos los productos con categoría de comics. La tercera "manga" me muestra todos los productos con categoría manga. La cuarta vista "compras_procesadas" me muestra todas las órdenes de pago con estado de compra "procesado". La quinta vista "productos_800up" me muestra todos los productos con un precio por encima de 800.

Las funciones están en el script FormatoBurgos.sql, la primera función "CANTIDAD_FAVORITOS_USUARIOS" me da como resultado la cantidad total de favoritos del usuario que se pase como parámetro. La segunda función "TOTAL_CARRITO_COMPRAS" me da como resultado el total de gasto sumando todos los carritos del usuario que se pase como parámetro.

Las SPs están en el script StoredBurgos.sql, donde el primer SP me trae la lista ordenada ya sea de forma ascendente o descendente de cualquier columna de la tabla productos, podemos setear tanto la columna como la forma de orden antes de llamar a la SP. En la segunda SP elimina un usuario por su ID, seteando el ID y haciendo la llamada al SP.

Los Triggers están en el script TriggersBurgos.sql, se crea una tabla "LOG_AUDITORIA" donde se almacenara tanto los insert como los update que se hagan a las tablas productos y usuarios. El primer trigger se activa después de hacer un insert en la tabla productos, almacenando en "LOG_AUDITORIA" los campos nombre, stock, precio, qué acción se realiza, el nombre de la tabla donde se realiza el insert, el usuario que realiza dicho insert y fecha/hora. El segundo trigger se activa antes de hacer un update en la tabla productos, almacenando en "LOG_AUDITORIA" los campos nuevos de nombre, stock y precio, dentro del campo "CAMPOANTERIOR_CAMPONUEVO" se almacena los valores antiguos junto con los nuevos valores, también qué acción se realiza, el nombre de la tabla donde se realiza el insert, el usuario que realiza dicho insert y fecha/hora. El tercer trigger se activa después de hacer un insert en la tabla USUARIOS, almacenando en "LOG_AUDITORIA" los campos email, passoword, dni, qué acción se realiza, el nombre de la tabla donde se realiza el insert, el usuario que realiza dicho insert y fecha/hora. El cuarto trigger se activa antes de hacer un update en la tabla USUARIOS, almacenando en "LOG_AUDITORIA" los campos nuevos de email, passoword y dni, dentro del campo "CAMPOANTERIOR_CAMPONUEVO" se almacena los valores antiguos junto con los nuevos valores, también qué acción se realiza, el nombre de la tabla donde se realiza el insert, el usuario que realiza dicho insert y fecha/hora.

En el script SentenciasBurgos.sql está la creación de 2 usuarios. El primero "L_USER" tiene permisos solo de lectura de la DB "ENTREGA_3". El segundo usuario "LIM_USER" tiene permiso de lectura, inserción y modificación en la DB "ENTREGA_3".