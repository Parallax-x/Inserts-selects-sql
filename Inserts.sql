INSERT INTO artist(name)
VALUES('Linkin Park'), ('Limp Bizkit'), ('Blink 182'), ('Ghostemane'), ('СЛОТ');

INSERT INTO genre(name)
VALUES('Nu metal'), ('Alternative rock'), ('Punk rock'), ('Trap metal'), ('Metalcore');

INSERT INTO album(name, year)
VALUES('Meteora', 2003), ('2 войны', 2006), ('Тринити', 2007), ('Enema of the State', 1999), ('Significant Other', 1999);

INSERT INTO album(name, year)
VALUES('Baader-Meinhof', 2020);

INSERT INTO track(name, duration, album_id)
VALUES('Nookie', 289, 5), ('Faint', 162, 1), ('Numb', 188, 1), ('2 войны', 222, 2), ('What’s My Age Again?', 148, 4), ('All the Small Things', 168, 4), ('Они убили Кенни', 224, 3);

INSERT INTO track(name, duration, album_id)
VALUES('Baader-Meinhof', 124, 6);

INSERT INTO track(name, duration, album_id)
VALUES('Break Stuff', 167, 5);

INSERT INTO collection(name, year)
VALUES('One', 2006), ('Two', 2000), ('Three', 2010), ('Four', 2023);

INSERT INTO collection(name, year)
VALUES('Five', 2019);

INSERT INTO artist_album(artist_id, album_id)
VALUES(1, 1), (2, 5), (3, 4), (5, 2), (5, 3);

INSERT INTO artist_album(artist_id, album_id)
VALUES(4, 6);

INSERT INTO genre_artist(artist_id, genre_id)
VALUES(1, 1), (2, 2), (3, 3), (4, 5), (5, 5), (1, 2), (5, 2);

INSERT INTO genre_artist(artist_id, genre_id)
VALUES(4, 4), (5, 3), (2, 1);

INSERT INTO track_collection(track_id, collect_id)
VALUES(1, 3), (1, 5), (2, 1), (2, 4), (3, 4), (3, 5), (4, 4), (4, 5), (5, 2), (5, 5), (5, 1), (6, 2), (7, 4);
