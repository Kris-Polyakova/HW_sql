CREATE TABLE IF NOT EXISTS genre (
	id SERIAL PRIMARY KEY,
	name VARCHAR(30) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS music_artist (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS music_artist_genre (
	genre_id INTEGER REFERENCES genre(id),
	music_artist_id INTEGER REFERENCES music_artist(id),
	CONSTRAINT pk_mag PRIMARY KEY (genre_id, music_artist_id)
);

CREATE TABLE IF NOT EXISTS album (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS music_artist_album (
	album_id INTEGER REFERENCES album(id),
	music_artist_id INTEGER REFERENCES music_artist(id),
	CONSTRAINT pk_maa PRIMARY KEY (album_id, music_artist_id)
);

CREATE TABLE IF NOT EXISTS track (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	time INTEGER NOT NULL,
	album_id INTEGER REFERENCES album(id)
);

CREATE TABLE IF NOT EXISTS collection (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS track_collection (
	track_id INTEGER REFERENCES track(id),
	collection_id INTEGER REFERENCES collection(id),
	CONSTRAINT pk_tc PRIMARY KEY (track_id, collection_id)
);

