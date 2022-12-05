-- Creacion de usuarios

-- Creo usuario de solo lectura
CREATE USER IF NOT EXISTS 'L_USER'@'localhost' IDENTIFIED BY 'lectura123' ;

-- Creo usuario de lectura, insercion y modificacion
CREATE USER IF NOT EXISTS 'LIM_USER'@'localhost' IDENTIFIED BY 'lecinsmod123' ;

-- Al usuario L_USER le doy permiso de lectura a la tabla E_COMMERCE
GRANT SELECT ON E_COMMERCE.* TO 'L_USER'@'localhost' ;

-- Al usuario LIM_USER le doy permiso de lectura, modificacion e insercion solo para la tabla E_COMMERCE
GRANT SELECT, INSERT, UPDATE ON E_COMMERCE.* TO 'LIM_USER'@'localhost' ;