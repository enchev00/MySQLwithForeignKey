create database minions;
use minions;

create table towns (
id int auto_increment,
town_name varchar(50),
primary key (id)
);

create table minions(
id int auto_increment,
age int,
minion_name varchar(50),
town_id int,
primary key (id),
foreign key (town_id) references towns(id)
);




insert into towns (town_name)
values ("Miami"),
("Varna"),
("Burgas"),
("MurzelGrad"),
("Plovdiv");

insert into minions (minion_name,age, town_id)
values ("Stoicho", 10, (select id from towns where town_name = "Plovdiv")),
("Kokorcho", 25, (select id from towns where town_name = "Varna")),
("Kartofcho", 30, (select id from towns where town_name = "MurzelGrad")),
("AquaMan", 33, (select id from towns where town_name = "Burgas")),
("Enrique", 44, (select id from towns where town_name = "Miami"));

select * from towns;
select * from minions;
