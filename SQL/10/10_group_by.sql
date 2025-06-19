-- select *, sum(aantal) as totaalverkocht, sum(verkoopprijs) as totaleprijs from verkochtproduct where product = 'mario wonder';

-- select *, sum(aantal) as totaalverkocht, sum(verkoopprijs) as totaleprijs from verkochtproduct group by product;

-- SELECT count(*) FROM `huisdierendata`;
-- SELECT count(*) FROM `verkochtproduct`;
SELECT count(*) as aantalHuidieren, eigenaarid as eigenaar FROM `huisdierendata` group by eigenaarid;
