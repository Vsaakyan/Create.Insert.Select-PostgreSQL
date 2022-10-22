CREATE TABLE IF NOT EXISTS singer(
	id SERIAL PRIMARY KEY,
	Nickname VARCHAR(60) NOT NULL 
);


CREATE TABLE IF NOT EXISTS album(
	id SERIAL PRIMARY KEY, 
	namee VARCHAR(60) NOT NULL,
	year INTEGER NOT NULL 
);


CREATE TABLE IF NOT EXISTS SingerAlbum(
	SingerID INTEGER NOT NULL REFERENCES singer(id),
	AlbumID INTEGER NOT NULL REFERENCES album(id),
	CONSTRAINT pk PRIMARY KEY (SingerID, AlbumID)
);


CREATE TABLE IF NOT EXISTS Music_genre(
	id serial PRIMARY KEY,
	name_of_genre VARCHAR(60) NOT NULL
);


CREATE TABLE IF NOT EXISTS SingerMusicgenre(
	MusicgenreID INTEGER NOT NULL REFERENCES Music_genre(id),
	SingerID INTEGER NOT NULL REFERENCES singer(id)
);


CREATE TABLE IF NOT EXISTS tracks(
	id SERIAL PRIMARY KEY, 
	name_of_track VARCHAR(60) NOT NULL,
	album_id INTEGER NOT NULL REFERENCES album(id)
);

ALTER TABLE tracks DROP COLUMN duration;

ALTER TABLE tracks 
ADD COLUMN duration integer;


CREATE TABLE IF NOT EXISTS Sbornik(
	id SERIAL PRIMARY KEY,
	name_of_sbornik VARCHAR(60) NOT NULL,
	release_year integer NOT NULL
);


CREATE TABLE IF NOT EXISTS Tracks_Sbornik(
	TracksID INTEGER NOT NULL REFERENCES tracks(id),
	SbornikID INTEGER NOT NULL REFERENCES Sbornik(id),
);

alter table tracks_sbornik  add primary key (tracksid, sbornikid);



