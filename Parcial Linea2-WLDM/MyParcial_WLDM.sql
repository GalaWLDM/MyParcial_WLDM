-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: consultorio
-- ------------------------------------------------------
-- Server version	5.7.10-log
--
-- Table structure for table `consultorio`
--
-- Elimino Data Base si existe
DROP TABLE IF EXISTS consultorio;

-- Creo Data Base consultorio

CREATE DATABASE consultorio;

-- Seleciono la Data Base a usar

USE consultorio;

-- Creo Tabla paciente 

CREATE TABLE paciente(
	idP int,
	nombre varchar(50),
	apellido varchar(50),
	direccion varchar(50),
	telefono varchar(50),
	ocupacion varchar(50),
	fechaNacimiento datetime,
	edad int,
	genero varchar(1),
	PRIMARY KEY (idP)
);

-- Creo Tabla doctor

CREATE TABLE doctor(
	idD int,
	nombre varchar(50),
	apellido varchar(50),
	telefono varchar(50),
	email varchar(50),
	PRIMARY KEY (idD)
);

-- Creo Tabla horarioDoctor

CREATE TABLE horarioDoctor(
	idHD int,
	idDoctor int,
	dia datetime,
	horainicio time,
	horafin time,
	PRIMARY KEY (idHD),
	FOREIGN KEY (idDoctor) REFERENCES doctor(idD)
);

-- Creo Tabla cita

CREATE TABLE cita(
	idC int,
	idDoctor int,
	idPaciente int,
	hora time,
	fecha datetime,
	tiempoduracion varchar(50),
	valor dec(18,2),
	estado varchar(15),
	PRIMARY KEY (idC),
	FOREIGN KEY (idDoctor) REFERENCES doctor (idD),
	FOREIGN KEY (idPaciente) REFERENCES paciente (idP) 
);


-- Insercion de registros en la tabla paciente

INSERT INTO paciente VALUES (101, 'SAAIBI', 'FLOREZ', 'TRAV DE GRACIA,47-08021', '932002207', 'Estudiante', '1996-30-12' 33, 'M');
INSERT INTO paciente VALUES (102, 'WILMAR', 'PEÑA', 'TRAV DE GRACIA,47-08021', '934143309', 'Estudiante', '1994-02-04' , 34, 'M');
INSERT INTO paciente VALUES (103, 'KEDWIN', 'PEREZ', 'TRAV GRACIA (DE),47-08021', '932001868', 'Estudiante', '1998-05-09', 45, 'M');
INSERT INTO paciente VALUES (104, 'DAVID', 'RAMOS', 'TRAV GRACIA (DE),49-08021', '936761964', 'Estudiante', '1993-26-01', 23, 'M');
INSERT INTO paciente VALUES (105, 'ESTEBAN', 'MARMOLEJO', 'CRA NACIONAL II, KM.0599,7-08780', 'Estudiante', '1994-13-06', 34, 'M');

-- Insercion de registros en la tabla doctor

INSERT INTO doctor VALUES (201, 'JENIFFER', 'ZAPATA', '937466315', 'docente.jvzapata@unac.edu.co');
INSERT INTO doctor VALUES (202, 'WALTER', 'ARBOLEDA', '937466320', 'warboleda@unac.edu.co');

--
--
--


