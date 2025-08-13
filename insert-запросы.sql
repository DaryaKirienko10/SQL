INSERT INTO singers (nickname)
VALUES ('Taylor Swift'), ('Ed Sheeran'), ('Drake'), ('Ariana Grande'), ('The Weeknd'), ('Billie Eilish');

INSERT INTO genres (name)
VALUES ('Pop'), ('Hop Hop'), ('R&B'), ('Rock'), ('Electronic');

INSERT INTO albums (name, year_release)
VALUES ('1989', 2014), ('Divide',2017 ), ('Scorpion', 2018), ('Thank U, Next', 2019), ('After Hours', 2020),
	   ('When We All Fall Asleep, Where Do We Go?', 2019);

INSERT INTO tracks (name, duration, album_id)
VALUES ('Blank Space', 219, 1), ('Shape of You', 263, 2), ('In My Feelings', 218, 3), ('Thank U, Next', 244, 4),
	   ('Blinding Lights', 200, 5), ('Bad Guy', 194, 6), ('Delicate', 212, 1), ('Happier', 238, 2),
	   ('Im The One', 235, 3), ('Good As Hell', 205, 4);

INSERT INTO singersgenres
VALUES (1, 1), (1, 5), (2, 2), (3, 2), (4, 1), (4, 3), (5, 3), (6, 1);

INSERT INTO albumssingers
VALUES (1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (6, 1);

INSERT INTO collections (name, year_release)
VALUES ('Now Thats What I Call Music!', 2017), ('Top Hits of 2020', 2020), ('The Best of Pop', 2019), ('Summer Playlist', 2022);

INSERT INTO collectionstracks (collection_id, track_id)
VALUES (1, 1), (1, 5), (2, 2), (2, 4), (3, 6), (3, 8), (4, 3), (4, 7);
