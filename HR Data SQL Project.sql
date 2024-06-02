create database 
ultimate_mysql_bootcamp;

use ultimate_mysql_bootcamp;

create table pastries(
	name VARCHAR(50) PRIMARY KEY NOT NULL,
    qunantity INT DEFAULT 0
)
;

show tables;

desc pastries;

drop table pastries;

show tables;

-- ------------------------------------------------------------------

create table employees(
	id INT auto_increment PRIMARY KEY NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    first_name VARCHAR(100) NOT NULL,
	middle_name VARCHAR(100),
    age INT NOT NULL,
    current_status VARCHAR(150) NOT NULL default 'employed'
)
;

show tables;

insert into employees(first_name, last_name, age, current_status)
values
('Richard', 'Johnson', 30, 'Super Employed'),
('Jessica', 'Wong', 25, 'Student');

select * from employees;

drop table cats;

create table cats
	(
    cat_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),
    breed VARCHAR(100),
    age INT,
    PRIMARY KEY(cat_id)
    )
    ;
    
show tables;

desc cats;

insert into cats(name, breed, age)
values
('Ringo', 'Tabby', 4),
('Cindy', 'Maine Coon', 10),
('Dumbledore', 'Maine Coon', 11),
('Egg', 'Persian', 4),
('Misty', 'Tabby', 13),
('George Michael', 'Ragdoll', 9),
('Jackson', 'Sphynx', 7);

select cat_id from cats;

select name, breed
from cats;

select name, age
from cats
where breed like 'Tabby';

select cat_id, age
from cats
where cat_id = age;

update cats
set name = 'Jack'
where name = 'Jackson';

update cats
set breed = 'British Shorthair'
where name = 'Ringo';

update cats
set age = 12
where name = ' Maine Coon';

delete from cats
where age = 4;

delete from cats
where cat_id = age;

select * from cats;

delete from cats;

create table shirts(
	shirt_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    article VARCHAR(50),
    color VARCHAR(50),
    shirt_size VARCHAR(1),
    last_worn INT
    );
    
show tables;