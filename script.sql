-- Database: Taller1

--  DATABASE "Taller1";


 /* TABLA PROPIERTARIOS */
CREATE DATABASE "Taller1"
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Spanish_Colombia.1252'
    LC_CTYPE = 'Spanish_Colombia.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
 /* TABLA PROPIERTARIOS */	
CREATE TABLE propietario(
	id_propietario int not null,
	nombre varchar(30),
	contacto varchar(20),
	mail varchar(40),
	contraseña varchar(15) not null,
	residencia varchar(25) not null,
	barrio varchar(20),
	localidad varchar(20), 
	primary key(id_propietario)
);

 /* REGISTROS TABLA PROPIERTARIOS */	
INSERT INTO propietario(id_propietario, nombre, contacto, mail, contraseña, residencia, barrio, localidad)
VALUES ('78459264','Lina Mendoza','3102457895','lina.mendoza@gmail.com', 'perritosano1', 'carrera 8 #145-45', 'tibabita', 'usaquen');

INSERT INTO propietario(id_propietario, nombre, contacto, mail, contraseña, residencia, barrio, localidad)
VALUES ('1335746942','Carlos Pinilla','3112447895','carlos.pinilla@hotmail.com', 'nosemeolvida1', 'calle 10 #14-45', 'San victorino', 'Candelaria');

INSERT INTO propietario(id_propietario, nombre, contacto, mail, contraseña, residencia, barrio, localidad)
VALUES ('657498512','Laura Rojas ','3214587542','laura.rojas@unbosque.edu.co', 'toronto23', 'carrera 45 # 28-51', 'Belalcazar', 'Los Martires');

INSERT INTO propietario(id_propietario, nombre, contacto, mail, contraseña, residencia, barrio, localidad)
VALUES ('147852369','Pablo Correa','3251457896','pablo.correa@gmail.com', 'rojo2314', 'carrera 45 #145-45', 'el cedrito', 'usaquen');

INSERT INTO propietario(id_propietario, nombre, contacto, mail, contraseña, residencia, barrio, localidad)
VALUES ('23614975','Anita manzanares','3214785987','anita.manzanares@yahoo.com', 'animalamable76', 'calle 70 # 25-21', 'Alcazares', 'barrios unidos');

INSERT INTO propietario(id_propietario, nombre, contacto, mail, contraseña, residencia, barrio, localidad)
VALUES ('1008746425','David Barrera','3168521478','david.barrera@unpunto.com', 'nocreoquelasepa', 'carrera 53 # 23 -41', 'Paulo IV', 'Teusaquillo');

INSERT INTO propietario(id_propietario, nombre, contacto, mail, contraseña, residencia, barrio, localidad)
VALUES ('7105624','Juan Moreno','3105478213','juan.moreno@gmail.com', 'facildeaprender', 'calle 134 # 25-37', 'soatama', 'suba');   

INSERT INTO propietario(id_propietario, nombre, contacto, mail, contraseña, residencia, barrio, localidad)
VALUES ('56426354','Felipe Blanco','3189764528','felipe.blanco@outlook.com', 'unicaensi65', 'calle 7 # 78 - 87', 'rosales', 'chapinero');

INSERT INTO propietario(id_propietario, nombre, contacto, mail, contraseña, residencia, barrio, localidad)
VALUES ('36985741','Angie rojas','3256987451','angie.rojas@gmail.com', 'zapato.2021', 'carrera 7 # 21 - 47', 'Sagrado corazon', 'santafe');

INSERT INTO propietario(id_propietario, nombre, contacto, mail, contraseña, residencia, barrio, localidad)
VALUES ('147826498','Fabian delgado','321757566','fabian.delgado@hotmail.com', 'relojdalahora', 'calle 8 #145-45', 'voto nacional', 'Los Martires');

INSERT INTO propietario(id_propietario, nombre, contacto, mail, contraseña, residencia, barrio, localidad)
VALUES ('9854263','Nelson cuadros','3152478962','nelson.cuadros@gmail.com', 'unafacil45', 'Cl. 138 #58 - 74', 'Colina campestre', 'Suba');
/* TABLA MASCOTA */
CREATE TABLE Mascota(
	id_propietario_mascota int NOT NULL,
	nombre varchar(40) NOT NULL, 
    edad int NOT NULL, 
	especie varchar(40) NOT NULL, 
    sexo varchar(40) NOT NULL,
	tamaño varchar(30) NOT NULL,
    potencialmente_peligroso varchar(30) NOT NULL,
    microchip varchar(22) NOT NULL,
    primary key (microchip),
    FOREIGN KEY(id_propietario_mascota) REFERENCES propietario(id_propietario) 
);
 /* REGISTROS TABLA MASCOTA */	
INSERT INTO mascota(id_propietario_mascota, nombre, edad,especie, sexo, tamaño, potencialmente_peligroso,microchip)
VALUES (78459264, 'Kira', 2, 'Pug','Hembra', 'Pequeño','No','ADG874') ;

INSERT INTO mascota(id_propietario_mascota, nombre, edad,especie, sexo, tamaño, potencialmente_peligroso,microchip)
VALUES (1335746942, 'Nova', 1, 'Samoyedo','Hembra', 'Mediano','No','BGH049') ;

INSERT INTO mascota(id_propietario_mascota, nombre, edad,especie, sexo, tamaño, potencialmente_peligroso,microchip)
VALUES (657498512, 'Tommy', 4, 'Golden retriever','Macho', 'Grande','No','QWR842') ;

INSERT INTO mascota(id_propietario_mascota, nombre, edad,especie, sexo, tamaño, potencialmente_peligroso,microchip)
VALUES (147852369, 'Ragnar', 3, 'Husky','Macho', 'Grande','No','OQI236') ;

INSERT INTO mascota(id_propietario_mascota, nombre, edad,especie, sexo, tamaño, potencialmente_peligroso,microchip)
VALUES (23614975, 'Nieve', 6, 'Border collie','Hembra', 'Mediano','No','TYI741') ;

INSERT INTO mascota(id_propietario_mascota, nombre, edad,especie, sexo, tamaño, potencialmente_peligroso,microchip)
VALUES (1008746425, 'Luna', 7, 'Dalmata','Hembra', 'Mediano','No','IUD652') ;

INSERT INTO mascota(id_propietario_mascota, nombre, edad,especie, sexo, tamaño, potencialmente_peligroso,microchip)
VALUES (7105624, 'Thor', 4, 'Rottweiler','Macho', 'Grande','Si','OQN123') ;

INSERT INTO mascota(id_propietario_mascota, nombre, edad,especie, sexo, tamaño, potencialmente_peligroso,microchip)
VALUES (56426354, 'Max', 6, 'Pitbull','Hembra', 'Grande','Si','NFG785') ;

INSERT INTO mascota(id_propietario_mascota, nombre, edad,especie, sexo, tamaño, potencialmente_peligroso,microchip)
VALUES (36985741, 'Mia', 3, 'Pomerania','Hembra', 'Pequeño','No','QIK741') ;

INSERT INTO mascota(id_propietario_mascota, nombre, edad,especie, sexo, tamaño, potencialmente_peligroso,microchip)
VALUES (147826498, 'Rocky', 8, 'Doberman','Hembra', 'Grande','Si','SFK745') ;

INSERT INTO mascota(id_propietario_mascota, nombre, edad,especie, sexo, tamaño, potencialmente_peligroso,microchip)
VALUES (9854263, 'Nala', 7, 'Pug','Hembra', 'Pequeño','No','YUG789') ;
/* TABLA VETERINARIA */
CREATE TABLE veterinaria (
  Nit VARCHAR(15) NOT NULL,
  Razon_Social VARCHAR(45) NOT NULL,
  Telefono VARCHAR(40) NOT NULL,
  correo VARCHAR(45) NOT NULL,
  direccion VARCHAR(45) NOT NULL,
  barrio VARCHAR(45) NOT NULL,
  localidad VARCHAR(45) NOT NULL,
  PRIMARY KEY (Nit));
  /* REGISTROS TABLA VETERINARIA */
INSERT INTO veterinaria(Nit,Razon_Social, telefono, correo, direccion, barrio, localidad) 
VALUES ('21109383-8','veterinaria la 34','344220901','la34@gmail.com','cra 34 #52-60','Veraguas Centra','Puente Aranda'),
('39891237-3','Los canchosos','504878552','canchosos@gmail.com','cra 87-22-3 ','J vargas','Barrios Unidos'),
('13520983-2','La merced veterinaria','872350559','lamerced@gmail.com','cra 45 #3-45','El campin','Martires'),
('10915493-8','Veterinaria Galan','146483735','VetGalan@gmail.com','Cra 34 #3-23','Galan','Puente aranda'),
('5870297-8','Veterinaria las cruces','745493661','lascrucesVet@gmail.com','Cra 23 #5-73','las cruces','marties');


/* TABLA TIPOS CASOS MASCOTAS */
CREATE TABLE tipos_casos_mascotas(
Nombre_mascota varchar(40) NOT NULL,  
caso  varchar(40) NOT NULL,  
fecha_ingreso date NOT NULL,     
nit_veterinaria varchar(20) NOT NULL,     
FOREIGN KEY(nit_veterinaria) REFERENCES veterinaria(Nit) 
);
  /* REGISTROS TABLA TIPOS CASOS MASCOTAS*/
INSERT INTO tipos_casos_mascotas(Nombre_mascota, caso, fecha_ingreso,nit_veterinaria )
VALUES ('Nala','perdida ','2020-12-12','5870297-8') ;

INSERT INTO tipos_casos_mascotas(Nombre_mascota, caso, fecha_ingreso,nit_veterinaria )
VALUES ('Jack','fallecimiento ','2021-04-01','10915493-8') ;

INSERT INTO tipos_casos_mascotas(Nombre_mascota, caso, fecha_ingreso,nit_veterinaria )
VALUES ('Canela','robo ','2021-08-13','10915493-8') ;

INSERT INTO tipos_casos_mascotas(Nombre_mascota, caso, fecha_ingreso,nit_veterinaria )
VALUES ('Bimba','perdida ','2021-07-28','13520983-2') ;

INSERT INTO tipos_casos_mascotas(Nombre_mascota, caso, fecha_ingreso,nit_veterinaria )
VALUES ('Zeus','robo ','2021-08-31','5870297-8') ;

INSERT INTO tipos_casos_mascotas(Nombre_mascota, caso, fecha_ingreso,nit_veterinaria )
VALUES ('Coco','fallecimiento ','2021-05-26','13520983-2') ;

INSERT INTO tipos_casos_mascotas(Nombre_mascota, caso, fecha_ingreso,nit_veterinaria )
VALUES ('Toby','perdida ','2021-02-25','39891237-3') ;

INSERT INTO tipos_casos_mascotas(Nombre_mascota, caso, fecha_ingreso,nit_veterinaria )
VALUES ('Bruno','fallecimiento ','2021-01-12','13520983-2') ;

INSERT INTO tipos_casos_mascotas(Nombre_mascota, caso, fecha_ingreso,nit_veterinaria )
VALUES ('Lucas','fallecimiento ','2021-06-04','39891237-3') ;
/* TABLA TIPOS  VISITA VETERINARIA */
CREATE TABLE visitaVeterinaria (
  nitVeterinaria VARCHAR(15) NOT NULL,
  tipoVisita VARCHAR(15) NOT NULL,
  fecha_Ingreso VARCHAR(45) NOT NULL,
  microchip varchar(40) not null,
 FOREIGN KEY(nitVeterinaria) REFERENCES veterinaria(Nit),
 FOREIGN KEY(microchip) REFERENCES Mascota(microchip)
 );
 /* REGISTROS TABLA TIPOS  VISITA VETERINARIA */
INSERT INTO visitaveterinaria (nitVeterinaria,tipoVisita,fecha_Ingreso,microchip) 
VALUES ('21109383-8','control','04-08-2021','OQN123'),
('13520983-2','urgencia','28-08-2021','BGH049'),
('39891237-3','control','31-08-2021','YUG789');
 /*  TABLA TIPOS FUNCIONARIOS ALCALDIA */
CREATE TABLE funcionarios_alcaldia(
	id_alcaldia int not null,
	nombre varchar(30),
	mail varchar(40),
	contraseña varchar(20) not null,
	cargo varchar(25) not null,
    primary key(id_alcaldia)
);
 /* REGISTROS TABLA TIPOS FUNCIONARIOS ALCALDIA */
INSERT INTO funcionarios_alcaldia(id_alcaldia, nombre, mail, contraseña, cargo)
VALUES ('459085','Daniel Rojas','daniel.rojas@alcaldia.gov', 'notanfacil23', 'asistente administrativo');

INSERT INTO funcionarios_alcaldia(id_alcaldia, nombre, mail, contraseña, cargo)
VALUES ('875485','Camila Morales','camila.morales@alcaldia.gov', 'España.432', 'Gerente');

INSERT INTO funcionarios_alcaldia(id_alcaldia, nombre, mail, contraseña, cargo)
VALUES ('451278','Edwin Duarte','edwin.duarte@alcaldia.gov', 'Comparacion432', 'Dir. Ingenieria');

INSERT INTO funcionarios_alcaldia(id_alcaldia, nombre, mail, contraseña, cargo)
VALUES ('451277','Eliana Martinez','eliana.martinez@alcaldia.gov', 'Melesios.432', 'Analista de animales');

INSERT INTO funcionarios_alcaldia(id_alcaldia, nombre, mail, contraseña, cargo)
VALUES ('124575','Dwein leopoldo','dwein.leopoldo@alcaldia.gov', '*Situaciones.43', 'Analista de planeación');

INSERT INTO funcionarios_alcaldia(id_alcaldia, nombre, mail, contraseña, cargo)
VALUES ('658452','Leonard cooper','leonard.cooper@alcaldia.gov', 'Mensaje*.235', 'Aprobador auxiliar');


/* Vistas */

 /* Vista 1 */ 
CREATE MATERIALIZED VIEW vista_alcadia AS 
SELECT  
propietario.id_propietario,
propietario.localidad, 
mascota.especie,
mascota.sexo,
mascota.tamaño,
mascota.potencialmente_peligroso,
mascota.microchip
FROM propietario,mascota
where propietario.id_propietario = mascota.id_propietario_mascota;

select * from vista_alcadia;

/* Vista 2 */
CREATE VIEW controlveterinario_alcadia AS
SELECT
propietario.id_propietario,
propietario.localidad, 
mascota.especie,
mascota.sexo,
mascota.tamaño,
mascota.potencialmente_peligroso,
mascota.microchip, 
visitaveterinaria.nitveterinaria,
visitaveterinaria.tipovisita
FROM propietario,mascota,visitaveterinaria
where propietario.id_propietario = mascota.id_propietario_mascota
and visitaveterinaria.microchip = mascota.microchip;

select * from controlveterinario_alcadia;

/* Vista 3 */
CREATE MATERIALIZED VIEW Vista_CasosVeterinarias AS 
select 
(veterinaria.razon_social) as Nombre_Veterinaria,
veterinaria.telefono,
veterinaria.barrio,
veterinaria.localidad,
tipos_casos_mascotas.nombre_mascota,
tipos_casos_mascotas.caso,
(tipos_casos_mascotas.fecha_ingreso) as Fecha
from veterinaria,tipos_casos_mascotas
where veterinaria.nit = tipos_casos_mascotas.nit_veterinaria
order by (tipos_casos_mascotas.nombre_mascota);

select * from Vista_CasosVeterinarias;

/* Vista 4 */
CREATE VIEW veterinarias_Propietario AS
select 
(veterinaria.razon_social) as Nombre_Veterinaria,
veterinaria.telefono, 
veterinaria.localidad,
veterinaria.direccion,
veterinaria.correo
from veterinaria
where veterinaria.localidad='Puente Aranda'
or veterinaria.localidad='Puente aranda';

select * from veterinarias_Propietario;

/* Indicices */ 

CREATE INDEX microchip on mascota (microchip);
CREATE INDEX nitVisitaVet ON visitaveterinaria (nitveterinaria)
CREATE INDEX direccionVet ON visitaveterinaria (direccion)



