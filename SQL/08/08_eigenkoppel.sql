drop table if exists helpdeskmedewerker;
drop table if exists beller;
drop table if exists gesprek;
CREATE TABLE `helpdeskmedewerker` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `voornaam` varchar(150) NOT NULL,
  `achternaam` varchar(150) NOT NULL,
  UNIQUE INDEX `helpdeskmedewerker_UNIQUE` (`id` ASC) VISIBLE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `beller` (
	`id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `voornaam` varchar(150) NOT NULL,
    `achternaam` varchar(150) NOT NULL,
    `telefoonnummer` varchar(11) NOT NULL,  
    UNIQUE INDEX `beller_UNIQUE` (`id` ASC) VISIBLE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `gesprek` (
	`gesprekId` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `medewerkerId` int(11) NOT NULL,
    `bellerId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

insert into helpdeskmedewerker (voornaam,achternaam) values 
('Piet','Hein');

insert into beller (voornaam,achternaam,telefoonnummer) values 
('Hans','Klok','0123456789');

insert into gesprek (medewerkerId,bellerId) values
(1,1);

select * from gesprek G
join helpdeskmedewerker M on G.medewerkerId=M.id
join beller B on G.bellerId=B.id;
