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
	majca varchar(32),
	haljina varchar(43) not null,
	lipa decimal (16.8),
	modelnaocala varchar(49) not null,
	kuna decimal(12.6) not null,
	jmbag char(11),
	cura int
);

create table cura ( 
	sifra int not null primary key auto_increment,
	haljina varchar(33) not null,
	drugiputa datetime not null,
	suknja varchar (38),
	narukvica int,
	introvertno bit,
	majica varchar(40) not null,
	decko int
);

create table decko(
	sifra int not null primary key auto_increment,
	indiferentno bit,
	vesta varchar(34) not null,
	asocijalno bit not null
);

create table decko_zarucnica(
	sifra int not null primary key auto_increment,
	decko int not null,
	zarucnica int not null
);

create table zarucnica(
	sifra int not null primary key auto_increment,
	narukvica int,
	bojakose varchar(37) not null,
	novcica decimal(15.9),
	lipa decimal(15.98) not null,
	indiferentno bit not null
);

alter table brat add foreign key (neprijatelj) references neprijatelj (sifra);
alter table neprijatelj add foreign key (cura) references cura (sifra);
alter table cura add foreign key (decko) references decko (sifra);
alter table decko_zarucnica add foreign key (decko) references decko (sifra);
alter table decko_zarucnica add foreign key (zarucnica) references zarucnica (sifra);


#1. U tablice neprijatelj, cura i decko_zarucnica unesite po 3 retka. (7)

select * from decko;

insert into decko (vesta,asocijalno) values
('crna',1),
('bijela',0),
('žuta',1);

select * from cura;

insert into cura (haljina,drugiputa,majica,decko) values
('ljubičasta','2001-05-21','žuta',1),
('crvena','2011-02-11','crna',2),
('crna','2002-11-01','plava',3);

select * from neprijatelj;

insert into neprijatelj (haljina,modelnaocala,kuna) values
('crna','ray-ban',333333.232421),
('roza','ray-ban',333333.232421),
('žuta','ray-ban',333333.232421);







































