truncate table gameTable;
INSERT INTO `gameTable` (`welk_platform`, `welk_jaar`, `uitgebracht`, `prijs`, `genre`)
VALUES
	('Console', '2012-05-12', 1, 19.99, 'dungeon crawler'), -- diablo 3
    ('PC', '2004-11-23', 1, null, 'MMO'), -- WoW
    ('All', '2009-05-17', 1, 29.99, 'sandbox'), -- Minecraft
	('All', '2025-05-19', 1, 69.99, 'FPS'), -- DOOM AOD
    ('All', 2018-12-03, 1, 23.99, 'action-adventure'), -- Just Cause 4
    ('PC', 2016-01-19, 1, 19.99, 'sandbox'), -- Scrap Mechanic
    ('Tabletop', 1935-11-05, 1, 22.49, 'strategy'); -- Monopoly

-- select * from gameTable where welk_platform = 'All' and prijs < 30.00;

-- select * from gameTable where genre = 'sandbox' or genre = 'dungeon crawler' and uitgebracht = 1;

select * from gameTable where genre = 'action-adventure' and uitgebracht = 0;