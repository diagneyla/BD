drop database cursolab1;

create database laboratorio1;
use laboratorio1;
drop table factura;
drop table articulos;
create table factura (
letra varchar(1) not null,
numero integer,
clienteid integer,
artculoid integer,
fecha date,
monto double,
primary key (letra, numero)
);

create table articulos (
articuloid integer not null ,
nombre varchar(50),
precio double,
stock integer,
primary key (articuloid)
);

create table clientes (
clienteid integer ,
nombre varchar (50),
apellido varchar (50),
cuit char (16),
direccion varchar(50),
comentarios varchar(50),
primary key (clienteid)
);

insert into factura
values
('A','13','13','004','2007-06-30','35000.80');

show tables;
select *from factura;

insert into articulos
values
(7, 'pala'          , 50, 50);

select *from articulos;

insert into clientes 
values
(2, 'martin' , 'perez'  , '20-36587452-0', 'Lima 600' ,null    );


select * from Clientes;
use  laboratorio1;
show tables;
desc articulos;
select * from articulos;

select* from articulos 
where precio > 100;

select* from articulos 
where precio  >=20 and precio <=40;

select* from articulos 
where precio  between 40 and 60;

select* from articulos 
where precio= 20 and stock >30;

select * from articulos where (precio=12 or precio=20 or precio=30);

select*from articulos
where precio in ('12','20','30');


select*from articulos
where precio not in ('12','20','30');

select * from articulos order by  precio desc ;

select articuloid, nombre, precio, stock, (precio *1.21)as IVA from articulos;
select articuloid, nombre, precio, stock, 3  AS 'cantidad de cuotas', (precio /3)*1.05 as 'valor de cuota' from articulos;


select *from articulos 
where precio <= 50;

select*from articulos
where precio >=500;

select*from articulos 
where stock < 30;

select *from articulos
where precio <>100;
select *from articulos 
where nombre like '%a%';


select*from articulos
where precio between 100 and 200;

select *from articulos
where precio*1.21<100;

select *from articulos
where stock<10 and precio*1.21>200 ;

select*from articulos
where precio/3<50;

use laboratorio1;
desc factura;
select*from factura;

select count(*) as cantidad_factura0 from factura;

select*from factura;
select min(monto)as minimo_precio from factura;
select max(monto) as maximo_precio from factura;

select round(avg(monto),2) as promedio_monto from factura;

select round(avg(monto),2) as promedio_monto from factura
where fecha>='2006-01-01'and fecha <='2006-12-31';

select count(*) as cantidad_factura from factura 
where monto >=35000 and monto <=46000; 