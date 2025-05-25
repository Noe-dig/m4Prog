-- alter table huisdierendata drop column eigenaar1;
-- alter table huisdierendata drop column eigenaar2;
-- alter table huisdierendata add eigenaarid int not null;

update huisdierendata set eigenaarid = 1 where idhuisdiereigenaar = 1;

select * from huisdierendata;

-- continu error