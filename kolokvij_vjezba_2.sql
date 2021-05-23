drop database if exists kolokvij_vjezba_2;
create database kolokvij_vjezba_2;
use kolokvij_vjezba_2;

create table brat(
	sifra int not null primary key auto_increment,
	suknja varchar(47),
	ogrlice int not null,
	asocijalno bit not null,
	neprijatelj int not null
);

create table neprijatelj(
	sifra int not null primary key auto_increment,
	
);