кол-во исполнителей в каждом жанре.
SELECT musicgenreid , COUNT(singerid) FROM singermusicgenre
GROUP BY musicgenreid;


# количество треков, вошедших в альбомы 2019-2020 годов
SELECT COUNT(name_of_track) FROM tracks t  
JOIN album a ON a.id = t.album_id 
WHERE a.year BETWEEN 2019 AND 2020
GROUP BY t.name_of_track;


# средняя продолжительность треков по каждому альбому
SELECT AVG(duration) FROM tracks t
JOIN album a ON a.id = t.album_id 
GROUP BY album_id;


# все исполнители, которые не выпустили альбомы в 2020 году

SELECT nickname FROM singer s 
WHERE nickname NOT IN (SELECT nickname FROM singer s3 JOIN singeralbum s2 ON s2.albumid = s3.id 
JOIN album a ON a.id  = s3.id  
WHERE a.YEAR = 2020);


# названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
SELECT DISTINCT(name_of_sbornik) FROM sbornik s 
JOIN tracks_sbornik ts  ON ts.sbornikid  = s.id 
JOIN tracks ts2 ON ts2.id = ts.tracksid 
JOIN album a ON a.id = ts2.album_id 
JOIN singeralbum s2 ON s2.albumid  = a.id 
JOIN singer s3 ON s3.id = s2.singerid 
WHERE s3.nickname LIKE '%50 cent%';


# название альбомов, в которых присутствуют исполнители более 1 жанра
SELECT namee FROM album a 
JOIN singeralbum s ON s.albumid  = a.id
JOIN singer s2 ON s2.id = s.singerid 
JOIN singermusicgenre s3 ON s3.singerid = s2.id
GROUP BY namee
HAVING count(*) > 1;


# наименование треков, которые не входят в сборники
SELECT name_of_track FROM tracks t 
LEFT JOIN  tracks_sbornik ts  ON ts.tracksid = t.id
LEFT JOIN sbornik s ON s.id = ts.sbornikid
GROUP BY name_of_track 
HAVING count(sbornikid) = 0;


# исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько)

SELECT nickname FROM singer s
JOIN singeralbum s2 ON s2.singerid = s.id 
JOIN album a ON a.id = s2.albumid
JOIN tracks t ON t.album_id  = s.id
WHERE t.duration = (SELECT MIN(duration) FROM tracks);

# название альбомов, содержащих наименьшее количество треков.

SELECT namee FROM album a 
JOIN tracks t ON t.album_id = a.id
WHERE t.id  < (SELECT AVG(album_id) FROM tracks )
GROUP BY a.namee;
