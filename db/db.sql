USE proyecto;

CREATE TABLE IF NOT EXISTS usuario (
  id_usuario int PRIMARY KEY AUTO_INCREMENT,
  usuario varchar(50) DEFAULT NULL,
  contrasena varchar(100) DEFAULT NULL,
  rol int DEFAULT '0'
);

CREATE TABLE IF NOT EXISTS  empresa (
    id_empresa INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    estatus TINYINT(1) DEFAULT '1',
    correo VARCHAR(50),
    direccion VARCHAR(50),
    telefono VARCHAR(50),
    poli_condi VARCHAR(100),
    id_usuario INT,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

CREATE TABLE IF NOT EXISTS ciudad (
  id_cuidad int PRIMARY KEY AUTO_INCREMENT,
  nombre varchar(50) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS servicio (
  id_servicio int PRIMARY KEY AUTO_INCREMENT,
  tipo varchar(20) DEFAULT NULL,
  nombre varchar(50) DEFAULT NULL,
  descripcion varchar(100) DEFAULT NULL,
  costo decimal(10,2) DEFAULT NULL,
  extra varchar(45) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS calendario_vuelos (
  id_vuelos int PRIMARY KEY AUTO_INCREMENT,
  id_empresa int DEFAULT NULL,
  id_servicio int DEFAULT NULL,
  origen varchar(50) DEFAULT NULL,
  destino varchar(50) DEFAULT NULL,
  hora_salida time DEFAULT NULL,
  asientos_dis int DEFAULT NULL,
  fecha_vuelos datetime DEFAULT NULL,
  tipo_avion varchar(50) DEFAULT NULL,
  costo decimal(10,2) DEFAULT NULL,
  FOREIGN KEY (id_empresa) REFERENCES empresa (id_empresa),
  FOREIGN KEY (id_servicio) REFERENCES servicio (id_servicio)
);

CREATE TABLE IF NOT EXISTS reserva (
  id_reserva int PRIMARY KEY AUTO_INCREMENT,
  id_usuario int DEFAULT NULL,
  id_vuelos int DEFAULT NULL,
  fecha_reserva date DEFAULT NULL,
  pago decimal(10,2) DEFAULT NULL,
  FOREIGN KEY (id_usuario) REFERENCES usuario (id_usuario),
  FOREIGN KEY (id_vuelos) REFERENCES calendario_vuelos (id_vuelos)
) ;

INSERT INTO usuario VALUES (1,'Usuario','1234',0),(2,'Empresa','1234',1),(3,'Empresa2','1234',1);

INSERT INTO ciudad VALUES (1,'CDMX'),(2,'Cancun'),(3,'Guadalajara'),(4,'Monterrey'),(5,'Tijuana'),(6,'Puerto Vallarta'),(7,'Merida'),(8,'Los Cabos'),(9,'Toluca'),(10,'Veracruz'),(11,'Acapulco'),(12,'Oaxaca'),(13,'Puebla'),(14,'Queretaro'),(15,'Chihuahua');

INSERT INTO empresa VALUES (1,'Aeromexico',1,'aeromexico@email.com','Calle #1','5552361489','Politicas y condiciones del vuelo',2);

INSERT INTO servicio VALUES (1,'basico','paquete estandar','1 comida',NULL,NULL);


