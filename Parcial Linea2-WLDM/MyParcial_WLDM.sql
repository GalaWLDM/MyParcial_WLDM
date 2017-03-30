-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: consultorio
-- ------------------------------------------------------
-- Server version	5.7.10-log
--
-- Table structure for table `consultorio`
--
DROP TABLE IF EXISTS consultorio;

CREATE TABLE paciente(
idP int,
nombre varchar(50),
apellido varchar(50)
PRIMARY KEY (idP)
)
