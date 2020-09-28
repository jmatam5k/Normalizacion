CREATE DATABASE normalizacion;

CREATE TABLE libro(cod_libro SERIAL, titulo VARCHAR(30), PRIMARY KEY(cod_libro));

CREATE TABLE autor(id SERIAL, nombre VARCHAR (20), PRIMARY KEY(id));

CREATE TABLE editorial(id SERIAL, nombre VARCHAR(20), PRIMARY KEY(id));

CREATE TABLE lector(id SERIAL, nombre VARCHAR(20), PRIMARY KEY(id));

CREATE TABLE fecha_devolucion(id SERIAL, fecha TIMESTAMP, cod_libro INT, id_lector INT,
PRIMARY KEY(id),
FOREIGN KEY(cod_libro) REFERENCES libro(cod_libro),
FOREIGN KEY(id_lector) REFERENCES lector(id));

CREATE TABLE libro_autor(id_autor INT, cod_libro INT, 
FOREIGN KEY(id_autor) REFERENCES autor(id), 
FOREIGN KEY(cod_libro) REFERENCES libro(cod_libro));

CREATE TABLE libro_editorial(cod_libro INT, id_editorial INT, 
FOREIGN KEY(cod_libro) REFERENCES libro(cod_libro),
FOREIGN KEY(id_editorial) REFERENCES editorial(id));
