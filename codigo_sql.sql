CREATE DATABASE biblioteca;

CREATE TABLE libros(
id_libro INT
,titulo VARCHAR(25)
,id_autor INT
,id_editorial INT
, PRIMARY KEY (id_libro)
, FOREIGN KEY (id_autor) REFERENCES autores(id_autor)
, FOREIGN KEY (id_editorial) REFERENCES editoriales(id_editorial)
);

CREATE TABLE autores(
id_autor INT
,autor VARCHAR(25)
, PRIMARY KEY (id_autor)
);

CREATE TABLE editoriales(
id_editorial INT
,editorial VARCHAR(25)
, PRIMARY KEY (id_editorial)
);

CREATE TABLE lectores(
id_lector INT
,lector VARCHAR(25)
, PRIMARY KEY (id_lector)
);

CREATE TABLE prestamos(
id_prestamo INT
,id_libro INT
,id_lector INT
, PRIMARY KEY (id_prestamo)
, FOREIGN KEY (id_libro) REFERENCES libros(id_libro)
, FOREIGN KEY (id_lector) REFERENCES lectores(id_lector)
);