-- alter table huisdierendata drop column eigenaar1;
-- alter table huisdierendata drop column eigenaar2;
-- alter table huisdierendata add eigenaarid int not null;

update huisdierendata set eigenaarid = 1 where id in (1,3);
update huisdierendata set eigenaarid = 2 where id in (2,4);

select * from huisdierendata;

