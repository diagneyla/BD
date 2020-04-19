create database videoclub;
use videoclub;
create table pelicula(
codigo_pelicula int not null auto_increment,
titulo varchar(60) not null,
año int not null,
duracion int null,
primary key (codigo_pelicula)
);
show tables;
desc pelicula;

create table amigo (
codigo_amigo int not null auto_increment,
nombre varchar(60) not null,
apellidoo varchar(60) not null,
telefono int not null,
direccion varchar(200) not null,
primary key (codigo_amigo)
);
show tables;

insert into pelicula
values
('001', 'titanic', '1997','210'),
('002','avatar','2009','162'),
('003','la bella y la bestia','2017','130'),
('004','el rey leon','20019','118'),
('005','harry potter y el caliz de fuego','2005','157'),
('006','harry potter y el principe mestizo','2009','154'),
('007','harry potter y las reliquias de la muerte 1','2010','146'),
('008','harry potter y las reliquias de la muerte 2','2011','130'),
('009','harry potter y la piedra filosofal','2001','159'),
('010','harry potter y lla camara secreta','2002','174');

insert into amigo
values
('001','ana','perez','1123898200','gaona 2000'),
('002','maria','perez','1126898200','gaona 300'),
('003','mario','rodriguez','1123968200','gaona 400'),
('004','jose','perez','1123878200','gaona 5000'),
('005','luis','perez','1123898200','gaona 6000'),
('006','ana','lopez','1123638200','gaona 5400'),
('007','ana','lorenzo','1123897400','gaona 3500'),
('008','ana','gonzalez','1123894800','gaona 6200'),
('009','ana','patilla','1123894500','gaona 800'),
('010','ana','lobo','1123896300','gaona 9600');

update pelicula
set titulo='duro de matar'
where codigo_pelicula=003;
select*from pelicula;

delete from amigo 
where codigo_amigo=006;

delete from amigo
where codigo_amigo=007;

delete from amigo 
where codigo_amigo=008;

select*from amigo;
select *from prestamo;

insert into prestamo
values
('001','20-01-2019','18-01-2019','001','001'),
('002','20-02-2019','18-02-2019','003','004'),
('003','20-03-2019','18-03-2019','004','005'),
('004','20-04-2019','18-04-2019','002','006'),
('005','20-05-2019','18-05-2019','003','008'),
('006','20-06-2019','18-06-2019','007','008'),
('007','20-07-2019','18-07-2019','006','001'),
('008','20-08-2019','18-08-2019','003','002'),
('009','20-09-2019','18-09-2019','005','004'),
('010','20-10-2019','18-10-2019','009','010');

truncate prestamo;

SELECT DATE_FORMAT(fecha_fin, '%d/%m/%Y') FROM prestamo;
select sysdate();
alter table pelicula rename peliculas;
alter table amigo rename amigos;
alter table prestamo rename prestamos;
select distinct nombre from amigos;
select* from peliculas;
select titulo, duracion from peliculas;

select* from prestamos
where numero_alquiler between 003 and 006;

select*from amigos
where codigo_amigo not between 002 and 005;

select *from peliculas 
where titulo like '%ta%';

insert into amigos
values
(0,'Marina','Fernandez','45128956',' Parana 555'),
(0,'Lujan','Tucci' , '1137589612' , 'Lavalle 1100'),
(0,'Gabriel','Dominguez' ,'41109956' , 'Carlos Calvo 100'),
(0,'Raul' ,'Vazquez' , '45120014' , 'Peru 1120'),
(0,'Martina' , 'Perez' ,'113202044', 'Uruguay 220');
select *from amigos;

update amigos
set nombre='lorena',
apellidoo='milone'
where codigo_amigo=012;

create table auxiliar(
codigo_amigo int not null auto_increment,
nombre varchar(60) not null,
apellidoo varchar(60) not null,
telefono int not null,
direccion varchar(200) not null,
primary key (codigo_amigo)
);

insert into auxiliar  select * from amigos;
select *from auxiliar;
truncate auxiliar;