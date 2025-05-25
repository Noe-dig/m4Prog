DROP TABLE IF EXISTS `kleren`;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `kleren` (
	`id` int(11) NOT NULL,
	`beschrijving` varchar(100) NOT NULL,
	`kledingstype` varchar(100) NOT NULL,
	`kleur` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

ALTER TABLE `kleren`
	ADD  PRIMARY KEY (`id`);
    
ALTER TABLE `kleren`
	MODIFY `id` int(11) NOT NULL AUTO_INCREMENT	;
COMMIT;


INSERT INTO `kleren` (`id`, `beschrijving`, `kledingstype`, `kleur`)
 VALUES 
 (NULL, 'olymp overhemd', 'overhemd', 'wit'),
 (NULL, 'jakes overhemd', 'overhemd', 'blauw'),
 (NULL, 'eigen merk overhemd', 'overhemd', 'rood'),

  (NULL, 'mario tshirt', 'tshirt', 'rood'),
  (NULL, 'planet tshirt', 'tshirt', 'blauw'),
  (NULL, 'wit tshirt', 'tshirt', 'wit'),

  (NULL, 'spijker broek', 'broek', 'blauw'),
  (NULL, 'ripped spijker broek', 'broek', 'blauw'),
  (NULL, 'spijker broek', 'broek', 'zwart'),
  (NULL, 'nette witte broek', 'broek', 'wit') ;
 
--  select * from kleren where kleur = "rood" OR kleur = "wit";

-- select * from kleren where kleur = 'zwart' or kleur = 'blauw';

-- select * from kleren where kleur = 'zwart' or kleur = 'wit';

-- select * from kleren where kledingstype = 'broek' or kledingstype = 'tshirt'

-- select * from kleren where kledingstype='broek' and kleur = 'zwart' or kledingstype='broek' and kleur = 'wit';

-- select * from kleren where kledingstype='broek' and kleur = 'zwart' or kledingstype='broek' and kleur = 'wit' or kledingstype='overhemd' and kleur = 'zwart' or kledingstype='overhemd' and kleur = 'wit';

-- select * from kleren where kledingstype='tshirt' and kleur = 'rood' or kledingstype='tshirt' and kleur = 'blauw' or kledingstype='overhemd' and kleur = 'rood' or kledingstype='overhemd' and kleur = 'blauw';

-- select * from huisdierendata where eigenaar1 = 'joep' or eigenaar1 = 'marije';

select * from huisdierendata where leeftijd > 5 or leeftijd < 10 and ingeent = '1';