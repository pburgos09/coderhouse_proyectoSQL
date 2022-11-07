DROP SCHEMA IF EXISTS ENTREGA_3;

CREATE SCHEMA IF NOT EXISTS ENTREGA_3;

USE ENTREGA_3;

CREATE TABLE  USUARIOS
(
ID INT AUTO_INCREMENT,
EMAIL VARCHAR(25),
NOMBRE VARCHAR(25),
APELLIDO VARCHAR(25),
DOMICILIO VARCHAR(50),
PASSWORD VARCHAR(16),
ALIAS VARCHAR(25),
CELULAR VARCHAR(20),
DNI VARCHAR(15),
PRIMARY KEY(ID)
);

CREATE TABLE MARCAS
(
ID INT AUTO_INCREMENT,
NOMBRE VARCHAR(50),
IMAGEN VARCHAR(150),
PRIMARY KEY(ID)
);

CREATE TABLE CATEGORIAS
(
ID INT AUTO_INCREMENT,
NOMBRE VARCHAR(50),
PRIMARY KEY(ID)
);

CREATE TABLE  PRODUCTOS
(
ID INT AUTO_INCREMENT,
NOMBRE VARCHAR(250),
DESCRIPCION VARCHAR(2150),
STOCK VARCHAR(10),
IMAGEN VARCHAR(150),
PRECIO INT,
ID_MARCA INT,
ID_CATEGORIA INT,
PRIMARY KEY(ID),
CONSTRAINT FK_PRODUCTOS_MARCA
FOREIGN KEY (ID_MARCA)
REFERENCES MARCAS (ID),
CONSTRAINT FK_PRODUCTOS_CATEGORIA
FOREIGN KEY (ID_CATEGORIA)
REFERENCES CATEGORIAS (ID)
);

CREATE TABLE FAVORITOS
(
ID INT AUTO_INCREMENT,
ID_USUARIO INT,
ID_PRODUCTO INT,
PRIMARY KEY (ID),
CONSTRAINT FK_FAVORITOS_USUARIO
FOREIGN KEY (ID_USUARIO)
REFERENCES USUARIOS (ID),
CONSTRAINT FK_FAVORITOS_PRODUCTO
FOREIGN KEY (ID_PRODUCTO)
REFERENCES PRODUCTOS (ID)
);

CREATE TABLE CARRITO_COMPRAS
(
ID INT AUTO_INCREMENT,
CANTIDAD VARCHAR(20),
PRECIO_TOTAL VARCHAR(50),
ID_USUARIO INT,
ID_PRODUCTO INT,
PRIMARY KEY (ID),
CONSTRAINT FK_CARRITO_COMPRAS_USUARIO
FOREIGN KEY (ID_USUARIO)
REFERENCES USUARIOS (ID),
CONSTRAINT FK_CARRITO_COMPRAS_PRODUCTO
FOREIGN KEY (ID_PRODUCTO)
REFERENCES PRODUCTOS (ID)
);

CREATE TABLE ORDEN_PAGO
(
ID INT AUTO_INCREMENT,
METODO_PAGO VARCHAR(20),
FECHA_COMPRA DATE,
ESTADO_COMPRA VARCHAR(20),
ID_CARRITO_COMPRA INT,
PRIMARY KEY (ID),
CONSTRAINT FK_ORDEN_PAGO_CARRITO_COMPRA
FOREIGN KEY (ID_CARRITO_COMPRA)
REFERENCES CARRITO_COMPRAS (ID)
);

CREATE TABLE ORDEN_COMPRA
(
ID INT AUTO_INCREMENT,
DETALLES_COMPRA VARCHAR(1150),
ID_ORDEN_PAGO INT,
PRIMARY KEY (ID),
CONSTRAINT FK_ORDEN_COMPRA_ORDEN_PAGO
FOREIGN KEY (ID_ORDEN_PAGO)
REFERENCES CARRITO_COMPRAS (ID)
);
