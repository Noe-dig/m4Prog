truncate table `huisdiereigenaar`;
insert into `huisdiereigenaar` (`idhuisdiereigenaar`,`voornaam`,`achternaam`,`leeftijd`)
values
	(null, 'Joep', 'er de Poep', 15),
	(null, 'Marije', 'Zondernaam', 47); 
select * from huisdiereigenaar;