CREATE TABLE IF NOT EXISTS Genres (
	genre_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS Singers (
	singer_id SERIAL PRIMARY KEY,
	nickname VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS SingersGenres (
	singer_id INTEGER REFERENCES Singers(singer_id),
	genre_id INTEGER REFERENCES Genres(genre_id),
	CONSTRAINT pk1 PRIMARY KEY (singer_id, genre_id)
);

CREATE TABLE IF NOT EXISTS Albums (
	album_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	year_release INTEGER CHECK (year_release >= 1900) NOT NULL
);

CREATE TABLE IF NOT EXISTS AlbumsSingers (
	album_id INTEGER REFERENCES Albums(album_id),
	singer_id INTEGER REFERENCES Singers(singer_id),
	CONSTRAINT pk2 PRIMARY KEY (album_id, singer_id)
);

CREATE TABLE IF NOT EXISTS Tracks (
	track_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	duration INTEGER CHECK (duration > 0) NOT NULL,
	album_id INTEGER NOT NULL REFERENCES Albums(album_id)
);

CREATE TABLE IF NOT EXISTS Collections (
	collection_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	year_release INTEGER CHECK (year_release >= 1900) NOT NULL
);

CREATE TABLE IF NOT EXISTS CollectionsTracks (
	collection_track_id SERIAL PRIMARY KEY,
	collection_id INTEGER NOT NULL REFERENCES Collections(collection_id),
	track_id INTEGER NOT NULL REFERENCES Tracks(track_id)
);