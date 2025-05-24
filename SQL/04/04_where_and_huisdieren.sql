truncate table huisdierendata;

INSERT INTO `huisdierendata` (`naam`, `soort`, `ras`, `leeftijd`, `geboortedatum`,`ingeent`,`eigenaar1`,`eigenaar2`) 
VALUES 
('koning hamster', 'hamster', 'goudhamster','1', '2024-02-01','0','joep',null),
('miss fluffy', 'hamster', 'goudhamster','2', '2023-02-01','1','marije',null),
('knager', 'hamster', 'goudhamster','2', '2021-02-01','1','joep',null),
('minizebra', 'hamster', 'goudhamster','11', '2014-02-21','1','marije',null);

-- select * from huisdierendata where eigenaar1 = 'joep' and leeftijd > 1;

-- select * from huisdierendata where eigenaar1 = 'joep' or eigenaar1 = 'marije' and leeftijd = 1;

-- select * from huisdierendata where leeftijd = 1;

-- select * from huisdierendata where ingeent = 1 and leeftijd > 1;

select * from huisdierendata where eigenaar1 = 'marije' and ras = 'goudhamster' and leeftijd = 11;