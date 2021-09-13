--EJERCITACIÓN SUB-CÁPSULA 3
--Creación de la tabla
CREATE TABLE profesor(
  id int PRIMARY KEY NOT NULL,
  nombre varchar(30) NOT NULL,
  apellido varchar(30) not NULL,
  fecha_nacimiento date not NULL,
  salario float not NULL
);

--Inserto los valores del ejemplo
INSERT into profesor(id,nombre,apellido,fecha_nacimiento,salario) 
VALUES(1,'Juan','Perez','1990-06-06',55000);

INSERT into profesor(id,nombre,apellido,fecha_nacimiento,salario) 
VALUES(2,'Maria Emilia','Paz','1984-07-15',72000);

INSERT into profesor(id,nombre,apellido,fecha_nacimiento,salario) 
VALUES(3,'Martin','Correa','1987-12-07',63000);

INSERT into profesor(id,nombre,apellido,fecha_nacimiento,salario) 
VALUES(4,'Lucia','Diaz','1991-02-24',45000);

INSERT into profesor(id,nombre,apellido,fecha_nacimiento,salario) 
VALUES(5,'Raul','Martinez','1980-10-15',85000);

INSERT into profesor(id,nombre,apellido,fecha_nacimiento,salario) 
VALUES(6,'Mabel','Rios','1982-06-12',83000);


--1)Nombre, apellido y fecha de nacimiento de todos los empleados, ordenado por fecha de nacimiento ascendente.
SELECT nombre,apellido,fecha_nacimiento 
FROM profesor
ORDER BY fecha_nacimiento;

--2)Todos los profesores cuyo salario sea mayor o igual a 65000.
SELECT *
FROM profesor
where salario >= 65000;

--3)Todos los profesores que nacieron en la década del 80.
SELECT *
FROM profesor
where fecha_nacimiento BETWEEN '1980-01-01' AND '1989-12-31'

--4)5 registros
SELECT *
FROM profesor
LIMIT 5;

--5)Todos los profesores cuyo apellido inicie con la letra “P”
SELECT *
FROM profesor
WHERE apellido LIKE 'P%'

--6)Los profesores que nacieron en la década del 80 y tienen un salario mayor a 80000
SELECT *
FROM profesor
WHERE fecha_nacimiento BETWEEN '1980-01-01' and '1989-12-31' and
 salario > 80000;