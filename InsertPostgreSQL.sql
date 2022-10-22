
INSERT INTO singer(nickname)
VALUES('50 cent');

INSERT INTO singer(nickname)
VALUES('Alla pugacheva');

INSERT INTO singer(nickname)
VALUES('Zemphira');

INSERT INTO singer(nickname)
VALUES('Rihanna');

INSERT INTO singer(nickname)
VALUES('ASAP ROCKY');

INSERT INTO singer(nickname)
VALUES('Ray Charles');

INSERT INTO singer(nickname)
VALUES('Elvira Makaryan');

INSERT INTO singer(nickname)
VALUES('Linkin park');

INSERT INTO music_genre(name_of_genre)
VALUES('Rap');

INSERT INTO music_genre(name_of_genre)
VALUES('Pop');

INSERT INTO music_genre(name_of_genre)
VALUES('Rock');

INSERT INTO music_genre(name_of_genre)
VALUES('House');

INSERT INTO music_genre(name_of_genre)
VALUES('Country');

INSERT INTO singermusicgenre 
VALUES (1, 1);

INSERT INTO singermusicgenre 
VALUES (1, 5);

INSERT INTO singermusicgenre 
VALUES (2, 2);

INSERT INTO singermusicgenre 
VALUES (2, 4);

INSERT INTO singermusicgenre 
VALUES (4, 3);

INSERT INTO singermusicgenre 
VALUES (5, 1);

DELETE FROM singermusicgenre 
WHERE musicgenreid = 5;

INSERT INTO singermusicgenre 
VALUES (3, 8);

INSERT INTO singermusicgenre 
VALUES (5, 7);

INSERT INTO singermusicgenre 
VALUES (5, 6);

INSERT INTO album(namee, year)
VALUES ('get rich or try dying', 2000);

INSERT INTO album(namee, year)
VALUES ('миллионы роз', 2001);

INSERT INTO album(namee, year)
VALUES ('Love', 2008);

INSERT INTO album(namee, year)
VALUES ('Umbrella', 2006);

INSERT INTO album(namee, year)
VALUES ('Longliveasap', 2010);

INSERT INTO album(namee, year)
VALUES ('Mans world', 2000);

INSERT INTO album(namee, year)
VALUES ('im ser', 1999);

INSERT INTO album(namee, year)
VALUES ('rockneverdie', 2002);

INSERT INTO tracks (name_of_track, album_id)
VALUES ('peso', 5);

INSERT INTO tracks (name_of_track, album_id)
VALUES ('girls', 5);

INSERT INTO tracks (name_of_track, album_id)
VALUES ('fucking b**ches', 5);

INSERT INTO tracks (name_of_track, album_id)
VALUES ('Norits  im ser', 7);

INSERT INTO tracks (name_of_track, album_id)
VALUES ('Diamond', 4);

INSERT INTO tracks (name_of_track, album_id)
VALUES ('this is', 6);

INSERT INTO tracks (name_of_track, album_id)
VALUES ('rocknroooolpt5', 8);

INSERT INTO tracks (name_of_track, album_id)
VALUES ('in da club', 1);

INSERT INTO tracks (name_of_track, album_id)
VALUES ('PIMP', 1);

INSERT INTO tracks (name_of_track, album_id)
VALUES ('Паромщик', 2);

INSERT INTO tracks (name_of_track, album_id)
VALUES ('Любила тебя', 3);

INSERT INTO tracks (name_of_track, album_id)
VALUES ('Remember', 4);

INSERT INTO tracks (name_of_track, album_id)
VALUES ('rocky', 5);

INSERT INTO tracks (name_of_track, album_id)
VALUES ('get in my car', 1);

INSERT INTO tracks (name_of_track, album_id)
VALUES ('mami', 6);

UPDATE tracks 
SET duration = 85
WHERE id = 2;

UPDATE tracks 
SET duration = 74
WHERE id = 3;

UPDATE tracks 
SET duration = 90
WHERE id = 4;

UPDATE tracks 
SET duration = 94
WHERE id = 5;

UPDATE tracks 
SET duration = 56
WHERE id = 6;

UPDATE tracks 
SET duration = 78
WHERE id = 7;

UPDATE tracks 
SET duration = 91
WHERE id = 8;

UPDATE tracks 
SET duration = 100
WHERE id = 9;

UPDATE tracks 
SET duration = 61
WHERE id = 10;

UPDATE tracks 
SET duration = 64
WHERE id = 11;

UPDATE tracks 
SET duration = 95
WHERE id = 12;

UPDATE tracks 
SET duration = 77
WHERE id = 13;

UPDATE tracks 
SET duration = 64
WHERE id = 14;

UPDATE tracks 
SET duration = 60
WHERE id = 15;


INSERT INTO sbornik (name_of_sbornik, release_year)
VALUES ('TOP10ofrihanna', 2009);

INSERT INTO sbornik (name_of_sbornik, release_year)
VALUES ('TOPjjhiphop', 2002);

INSERT INTO sbornik (name_of_sbornik, release_year)
VALUES ('zemphirastracks', 2006);

INSERT INTO sbornik (name_of_sbornik, release_year)
VALUES ('Popmusic', 2010);

INSERT INTO sbornik (name_of_sbornik, release_year)
VALUES ('gunit', 2014);

INSERT INTO sbornik (name_of_sbornik, release_year)
VALUES ('rockbest', 2015);

INSERT INTO sbornik (name_of_sbornik, release_year)
VALUES ('armreacks', 2016);

INSERT INTO sbornik (name_of_sbornik, release_year)
VALUES ('seafor', 2013);

INSERT INTO singeralbum (singerid, albumid)
VALUES (1,1);

INSERT INTO singeralbum (singerid, albumid)
VALUES (2,2);

INSERT INTO singeralbum (singerid, albumid)
VALUES (3,3);

INSERT INTO singeralbum (singerid, albumid)
VALUES (4,4);

INSERT INTO singeralbum (singerid, albumid)
VALUES (5,5);

INSERT INTO singeralbum (singerid, albumid)
VALUES (6,6);

INSERT INTO singeralbum (singerid, albumid)
VALUES (7,7);

INSERT INTO singeralbum (singerid, albumid)
VALUES (8,8);

INSERT INTO tracks_sbornik (tracksid, sbornikid)
VALUES (1,2);

INSERT INTO tracks_sbornik (tracksid, sbornikid)
VALUES (2,2);

INSERT INTO tracks_sbornik (tracksid, sbornikid)
VALUES (3,2);

INSERT INTO tracks_sbornik (tracksid, sbornikid)
VALUES (4,7);

INSERT INTO tracks_sbornik (tracksid, sbornikid)
VALUES (5,4);

INSERT INTO tracks_sbornik (tracksid, sbornikid)
VALUES (6,6);

INSERT INTO tracks_sbornik (tracksid, sbornikid)
VALUES (7,5);

INSERT INTO tracks_sbornik (tracksid, sbornikid)
VALUES (8,5);

INSERT INTO tracks_sbornik (tracksid, sbornikid)
VALUES (9,4);

INSERT INTO tracks_sbornik (tracksid, sbornikid)
VALUES (10,8);

INSERT INTO tracks_sbornik (tracksid, sbornikid)
VALUES (11,4);

INSERT INTO tracks_sbornik (tracksid, sbornikid)
VALUES (12,1);

INSERT INTO tracks_sbornik (tracksid, sbornikid)
VALUES (13,2);

INSERT INTO tracks_sbornik (tracksid, sbornikid)
VALUES (14,5);

INSERT INTO tracks_sbornik (tracksid, sbornikid)
VALUES (15,2);

UPDATE album 
SET year = 2020
WHERE id = 5;

UPDATE album 
SET year = 2019
WHERE id = 4;

UPDATE singermusicgenre  
SET singerid = 1
WHERE musicgenreid  = 5;

INSERT INTO singermusicgenre (musicgenreid, singerid)
VALUES (3, 6);

INSERT INTO singermusicgenre (musicgenreid, singerid)
VALUES (2, 7);

INSERT INTO tracks 
values(16, 'someday', 3, 87);

INSERT INTO tracks 
values(17, 'not in sbornik', 8, 89);






































