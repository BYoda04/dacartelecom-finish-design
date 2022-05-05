create database dbprueba;
use dbprueba;
/*TABLA USUARIOS*/
CREATE TABLE usuarios (
  cod_user int(10) unsigned NOT NULL AUTO_INCREMENT,
  nom_user varchar(255) NOT NULL,
  tip_user varchar(255) NOT NULL,
  rol_user int(10) NOT NULL,
  password varchar(255) NOT NULL,
  PRIMARY KEY (cod_user)
) DEFAULT CHARSET=utf8mb4;
/*INSERT INTO usuarios ('iduser', 'nomuser', 'email', 'password') VALUES
(1, 'usuario1', 'user@gmail.com', '123456'),
(2, 'usuario1', 'user1@gmail.com', '123456')*/
INSERT INTO usuarios VALUES (1, 'usuario1', 'administrador', 1, '123456');
INSERT INTO usuarios VALUES (2, 'usuario1', 'supervisor', 2, '123456');

/*TABLA ROLES*/
CREATE TABLE roles (
  cod_rol int(10) unsigned NOT NULL AUTO_INCREMENT,
  name_rol varchar(255) NOT NULL,
  PRIMARY KEY (cod_rol),
  UNIQUE KEY name (name_rol)
) DEFAULT CHARSET=utf8mb4;
/*INSERT INTO usuarios ('idrol', 'namerol') VALUES
(1, 'administrador'),
(2, 'supervisor'),
(3, 'ventas')*/
INSERT INTO roles VALUES (1, 'administrador');
INSERT INTO roles VALUES (2, 'supervisor');
INSERT INTO roles VALUES (3, 'ventas');

/*TABLA LOGIN*/
CREATE TABLE login (
  user varchar(255) NOT NULL,
  password varchar(255) NOT NULL
) DEFAULT CHARSET=utf8mb4;
/*INSERT INTO usuarios ('user', 'password') VALUES
('admin123', '123456')*/
INSERT INTO login VALUES ('admin123', '123456');

CREATE TABLE ventas (
  cod_vnt int(10) unsigned NOT NULL AUTO_INCREMENT,
  fecha_vnt date,
  cant_vnt int(10) NOT NULL,
  met_vnt int(10) NOT NULL,
  PRIMARY KEY (cod_vnt)  
) DEFAULT CHARSET=utf8mb4;
/*INSERT INTO ventas ('codvent', 'fecha', 'cant', 'met') VALUES
(1, '5-05-2022', '10', '20'),
(2, '5-05-2022', '5', '10')*/
INSERT INTO ventas VALUES (1, '5-05-2022', '10', '20');
INSERT INTO ventas VALUES (2, '5-05-2022', '5', '10');


