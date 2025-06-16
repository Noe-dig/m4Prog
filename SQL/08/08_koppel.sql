drop table if exists teamlid;
drop table if exists team;
drop table if exists teamlidv2_teamv2;
CREATE TABLE `teamlid` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
--   `teamid` int(11) NOT NULL,
  `voornaam` varchar(150) NOT NULL,
  `achternaam` varchar(150) NOT NULL,
  UNIQUE INDEX `teamlidid_UNIQUE` (`id` ASC) VISIBLE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `teamnaam` varchar(150) NOT NULL,
  UNIQUE INDEX `teamid_UNIQUE` (`id` ASC) VISIBLE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `teamlidv2_teamv2` (
  `teamidv2` int NOT NULL,
  `teamlididv2` int NOT NULL,
    PRIMARY KEY (`teamlididv2`, `teamidv2`),
  UNIQUE INDEX `teamlidv2_teamv2_UNIQUE` (`teamlididv2` ASC,`teamidv2` ASC) VISIBLE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


insert into team (id,teamnaam) values 
(1,'flowerpower'),
(2,'poisonshroom'),
(3,'goombas'),
(4,'the toad army');


insert into teamlid (id,voornaam,achternaam) values 
(1,'mario','mario'),
(2,'luigi','mario'),
(3,'peach','?'),
(4,'toad','the one and only'),

(5,'kamek','the witch'),
(6,'waluigi','waa'),
(7,'wario','waa'),
(8,'bowser','the great');


insert into teamlidv2_teamv2 (teamlididv2,teamidv2) values 
(1,1),
(2,1),
(3,1),
(4,1),

(5,2),
(6,2),
(7,2),
(8,2);

select * from team;
