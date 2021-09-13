--EJERCITACIÓN SUB-CÁPSULA 1
--1)Creación de la tabla curso
CREATE TABLE curso (
  codigo integer not NULL PRIMARY KEY AUTOINCREMENT,
  nombre varchar(50) NOT NULL,
  descripcion varchar(100),
  turno varchar(25) not NULL 
)
--2)Agrego una columna para el cupo
alter table curso
add COLUMN cupo INT;

--3)Inserto los valores pedidos
INSERT into curso(codigo,nombre,descripcion,turno,cupo) 
VALUES(101, 'Algoritmos','Algoritmos y Estructuras de Datos','Mañana',35);

INSERT into curso(codigo,nombre,descripcion,turno,cupo) 
VALUES(102, 'Matemática Discreta','','Tarde',30);

--4)Inserto valor nulo (error)
iNSERT into curso(codigo,nombre,descripcion,turno,cupo) 
VALUES(106, NULL,'Materia nueva descripcion','Tarde',30);

--5)Inserto clave primaria repetida (error)
INSERT into curso(codigo,nombre,descripcion,turno,cupo)
VALUES(102,'curso','curso nuevo','Noche',30);

--6)Modifico el cupo en todos los cursos
UPDATE curso SET cupo = 25;

--7)Elimino el curso de 'Algoritmos'
DELETE FROM curso WHERE nombre = 'Algoritmos'