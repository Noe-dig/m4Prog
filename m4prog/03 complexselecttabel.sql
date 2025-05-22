truncate table complexselecttabel;

INSERT INTO `complexselecttabel`
(`videoID`,
`videoLength`,
`titel`,
`description`,
`uploader`
)
VALUES
    (null,01.30,'Ik ben Bram','Wie ben ik?','Bram'),
    (null,03.59,'Bijna 4 minuten','','Tijdman'),
    (null,14.30,'Waarom spaghetti mid is','','Bowser'),
    (null,02.04,'Waar ben ik?','help!!!!','KFC UK'),
    (null,19.59,'Metal playlist','Copyright infringement music','user1112392');
    
SELECT sum(videoLength) as totalVideoLength FROM complexselecttabel order by videoLength DESC;
    

