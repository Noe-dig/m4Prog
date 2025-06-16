-- drop table if exists voedselProduct;
-- drop table if exists ingredient;
-- CREATE TABLE `voedselProduct` (
--   `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
--   `hoofdIngredientId` int NOT NULL,
--   `naam` varchar(250) NOT NULL,
--   UNIQUE INDEX `productid_UNIQUE` (`id` ASC) VISIBLE
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- CREATE TABLE `ingredient` (
--   `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
--   `naam` varchar(250) NOT NULL,
--   UNIQUE INDEX `ingredientid_UNIQUE` (`id` ASC) VISIBLE
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- insert into ingredient (id,naam) values 
-- (1,'pindas');
-- insert into voedselProduct (hoofdIngredientId,naam) values 
-- (1,'pindakaas');
-- insert into voedselProduct (hoofdIngredientId,naam) values 
-- (2,'honingkoek');
-- insert into voedselProduct (hoofdIngredientId,naam) values 
-- (3,'bosbessenkwark');
-- insert into ingredient (id,naam) values 
-- (3,'bosbessen');

--  ALTER TABLE voedselProduct
--  ADD CONSTRAINT FK_voedselProduct_ingredient 
--  FOREIGN KEY (hoofdIngredientId) REFERENCES  
--  ingredient(id);

drop table if exists kat;
drop table if exists kitten;
create table `kat` (
	`id` int(11) not null auto_increment primary key,
    `naam` varchar(80) not null,
    unique index `katid_unique` (`id` asc) visible)
    engine=InnoDB default charset=utf8mb4 collate=utf8mb4_general_ci;
create table `kitten` (
	`id` int(11) not null auto_increment primary key,
	`mamaId` int(11) not null,
   	`papaId` int(11) not null,
    `naam` varchar(80) not null,
    unique index `katid_unique` (`id` asc) visible)
    engine=InnoDB default charset=utf8mb4 collate=utf8mb4_general_ci;

insert into kat (id,naam) values 
(null,'spinner'),
(null,'pluisje');
insert into kitten (mamaId,papaId,naam) values 
(1,2,'minicat');

select P.naam,C.naam from kat P 
join kitten C on (C.mamaId = P.id)+(C.papaId = P.id);

alter table kitten
drop foreign key FK_kitten_kat_mama,
drop foreign key FK_kitten_kat_pama;
alter table kitten
drop index FK_kitten_kat_mama,
drop index FK_kitten_kat_papa;

select * from kat;
select * from kitten;

delete from kat where id=1;