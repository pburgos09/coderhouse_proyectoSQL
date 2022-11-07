USE ENTREGA_3;

DROP TABLE IF EXISTS LOG_AUDITORIA;
CREATE TABLE IF NOT EXISTS LOG_AUDITORIA
(
ID INT AUTO_INCREMENT,
EMAIL VARCHAR(25),
PASSWORD VARCHAR(16),
DNI VARCHAR(15),
NOMBRE VARCHAR(250),
STOCK VARCHAR(10),
PRECIO INT,
CAMPOANTERIOR_CAMPONUEVO VARCHAR(500),
NOMBRE_ACCION VARCHAR(10),
NOMBRE_TABLA VARCHAR(50),
USUARIO VARCHAR(100),
FECHA_UPD_INS_DEL DATETIME,
PRIMARY KEY (ID)
) ;

DELIMITER //
CREATE TRIGGER TRG_LOG_PRODUCTOS 
AFTER INSERT ON PRODUCTOS
FOR EACH ROW
INSERT INTO LOG_AUDITORIA (NOMBRE,
							STOCK,
							PRECIO,
                            NOMBRE_ACCION,
                            NOMBRE_TABLA,
                            USUARIO,FECHA_UPD_INS_DEL)
VALUES(NEW.NOMBRE,
		NEW.STOCK,
        NEW.PRECIO,
        'INSERT',
        'PRODUCTOS',
        CURRENT_USER(),
        NOW());

END//
DELIMITER ;

DELIMITER //
CREATE TRIGGER TRG_LOG_PRODUCTOS1 
BEFORE UPDATE ON PRODUCTOS
FOR EACH ROW
INSERT INTO LOG_AUDITORIA (NOMBRE,
							STOCK,
                            PRECIO,
                            CAMPOANTERIOR_CAMPONUEVO,
                            NOMBRE_ACCION,
                            NOMBRE_TABLA,
                            USUARIO,
                            FECHA_UPD_INS_DEL)
VALUES(NEW.NOMBRE,
NEW.STOCK,
NEW.PRECIO,
CONCAT('CAMPOS ANTERIORES:',
		OLD.NOMBRE,
        ' ',
        OLD.STOCK,
        ' ',
        OLD.PRECIO,
        '-',
        'CAMPOS NUEVOS:',
        NEW.NOMBRE,
        ' ',
        NEW.STOCK,
        ' ',
        NEW.PRECIO),
'INSERT',
'PRODUCTOS',
CURRENT_USER(),
NOW());

END//
DELIMITER ;

DELIMITER //
CREATE TRIGGER TRG_LOG_USUARIOS
AFTER INSERT ON USUARIOS
FOR EACH ROW
INSERT INTO LOG_AUDITORIA (EMAIL,
							PASSWORD,
							DNI,
                            NOMBRE_ACCION,
                            NOMBRE_TABLA,
                            USUARIO,FECHA_UPD_INS_DEL)
VALUES(NEW.NOMBRE,
		NEW.STOCK,
        NEW.PRECIO,
        'INSERT',
        'USUARIOS',
        CURRENT_USER(),
        NOW());

END//
DELIMITER ;

DELIMITER //
CREATE TRIGGER TRG_LOG_USUARIOS1 
BEFORE UPDATE ON USUARIOS
FOR EACH ROW
INSERT INTO LOG_AUDITORIA (EMAIL,
							PASSWORD,
                            DNI,
                            CAMPOANTERIOR_CAMPONUEVO,
                            NOMBRE_ACCION,
                            NOMBRE_TABLA,
                            USUARIO,
                            FECHA_UPD_INS_DEL)
VALUES(NEW.NOMBRE,
NEW.STOCK,
NEW.PRECIO,
CONCAT('CAMPOS ANTERIORES:',
		OLD.EMAIL,
        ' ',
        OLD.PASSWORD,
        ' ',
        OLD.DNI,
        '-',
        'CAMPOS NUEVOS:',
        NEW.EMAIL,
        ' ',
        NEW.PASSWORD,
        ' ',
        NEW.DNI),
'UPDATE',
'USUARIOS',
CURRENT_USER(),
NOW());

END//
DELIMITER ;