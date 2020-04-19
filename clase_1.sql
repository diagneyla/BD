--  prueba
/*  multilinea
p
r
u
e
b
a
*/ 

#-- prueba una linea = -- 
-- crear una base de datos
create database jueves_curso;
-- otro codigo de crear una base de datos
create schema jueves_curso;

-- mostrar las bases existentes en el servidor
show databases;
show schemas;

-- para marcar la base que vamos a trabajar

use jueves_curso;

-- crear la tabla cliente , recordar refrescar
create table clientes(
idclientes int not null auto_increment,
nombre varchar(60) not null,
apellido varchar(60) not null,
cuit varchar(13) not null,
direccion varchar(80),
comentario varchar(200),
unique key (cuit),
primary key (idclientes)
);

-- para mostrar la descripcion de la tabla--
describe clientes;
desc clientes; -- es igual a describe--

-- show tables o squemas para ver la base de datos
-- mostrar las tablas 
show tables;

#creacion tabla libros

create table if not exists libros(
idlibros int not null auto_increment,
nombre varchar(60) not null,
autor varchar(60) default 'desconocido',
editorial varchar(60) not null,
precio decimal(5,2) not null,
fecah date not null,
stock int(6) unsigned zerofill,
primary key(idlibros)
);

show tables;

#para borrar la tabla libros si existe 

drop table if exists libros;

#para borrar la tabla clientes 
drop table clientes;

show tables;

-- borrar la base de datos 
drop database jueves_curso;
drop schema if exists jueves_curso;

use curso_jueves;

-- creamos la tabla facturas
create table facturas (
letra char(1) not null,
numero int not null,
monto decimal(5,2),
fecha date,
primary key(letra, numero) -- cuando el numero de identificacion combina numero y letra
);

show tables;

-- insertar un registro por codigo
insert into facturas
(letra, numero, monto, fecha)
values
('A',1,'560.50','2010-12-20');

select *from facturas; -- para ver el ingreso en la tabla 

drop database laboratorio;
drop database laboratorio1;

create database laboratorio1;
use laboratorio1;
create table facturas1 (
Letra 		char(1) not null,
Numero 	integer,
ClienteID  integer,
ArticuloID integer,
Fecha 		date	,
Monto 		double,
primary key (Letra, Numero)
);
show tables;

create table articulos (
ArticuloID	integer
	,Nombre 	varchar(50)
	,Precio 	double
	,Stock 		integer
	,primary key (ArticuloID)
    );
    
create table clientes1(
ClienteID      	integer
	,Nombre    		varchar(50)
	,Apellido   	varchar(50)
	,Cuit       	char(16)
	,Direccion  	varchar(50)
    ,Comentarios 	varchar(50)
    ,primary key (ClienteID)
    );
    show tables;
    
    insert into facturas1
(Letra, numero,ClienteID, ArticuloID, Fecha, Monarticulosto)
values
('A',2,02,'02','2010-12-20','800');
show tables;

insert into articulos
(ArticuloID, Nombre, Precio, Stock) 
values (1, 'Destornillador', 25, 50);
insert into articulos(ArticuloID, Nombre, Precio, Stock) values (2, 'Pinza'         , 35, 22);
insert into articulos(ArticuloID, Nombre, Precio, Stock) values (3, 'Martillo'      , 15, 28);
insert into articulos(ArticuloID, Nombre, Precio, Stock) values (4, 'Maza'          , 35, 18);
insert into articulos(ArticuloID, Nombre, Precio, Stock) values (5, 'Balde'         , 55, 13);

insert into facturas1(Letra, Numero, ClienteID, ArticuloID, Fecha, Monto) values ('A', 01, 1, 1, '2011/10/18', 500);
insert into facturas1(Letra, Numero, ClienteID, ArticuloID, Fecha, Monto) values ('A', 02, 2, 2, '2011/10/18', 2500);
insert into facturas1(Letra, Numero, ClienteID, ArticuloID, Fecha, Monto) values ('A', 03, 3, 3, '2011/10/18', 320);
insert into facturas1(Letra, Numero, ClienteID, ArticuloID, Fecha, Monto) values ('A', 04, 4, 4, '2011/10/18', 120);
insert into facturas1(Letra, Numero, ClienteID, ArticuloID, Fecha, Monto) values ('A', 05, 5, 5, curdate()   , 300);

show tables;
select * FROM laboratorio1.facturas1;
