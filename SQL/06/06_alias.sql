-- select naam, leeftijd,ingeent from huisdierendata as pets;

-- select pets.naam,ｐets.leeftijd,pets.ingeent from huisdierendata as pets;
drop table if exists persoon;
drop table if exists hobby;
CREATE TABLE `persoon` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `hobbyid` int(11) NOT NULL,
  `naam` varchar(150) NOT NULL,
  UNIQUE INDEX `persoonid_UNIQUE` (`id` ASC) VISIBLE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE `hobby` (
  `hobbyid` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `hobby` varchar(150) NOT NULL,
  UNIQUE INDEX `hobbyid_UNIQUE` (`hobbyid` ASC) VISIBLE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `hobby` ( `hobbyid`,`hobby`) VALUES (1,"gamen");
INSERT INTO `persoon` ( `naam`,`hobbyid`) VALUES ("leraar",1);

select * from hobby H join persoon P;

