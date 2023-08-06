CREATE TABLE IF NOT EXISTS Album (
album_id serial PRIMARY KEY,
name varchar(60) NOT NULL,
year smallint NOT NULL
);

CREATE TABLE IF NOT EXISTS Collection (
collect_id serial PRIMARY KEY,
name varchar(60) NOT NULL,
year smallint NOT NULL
);

CREATE TABLE IF NOT EXISTS Artist (
artist_id serial PRIMARY KEY,
name varchar(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS Genre (
genre_id serial PRIMARY KEY,
name varchar(40) UNIQUE NOT NULL 
);

CREATE TABLE IF NOT EXISTS Track (
track_id serial PRIMARY KEY,
name varchar(100) NOT NULL,
duration integer NOT NULL,
album_id integer NOT NULL REFERENCES Album(album_id)
);

CREATE TABLE IF NOT EXISTS Genre_artist (
g_ar serial PRIMARY KEY,
artist_id integer NOT NULL REFERENCES Artist(artist_id),
genre_id integer NOT NULL REFERENCES Genre(genre_id)
);

CREATE TABLE IF NOT EXISTS Artist_album (
ar_al serial PRIMARY KEY,
artist_id integer NOT NULL REFERENCES Artist(artist_id),
album_id integer NOT NULL REFERENCES Album(album_id)
);

CREATE TABLE IF NOT EXISTS Track_collection (
t_c serial PRIMARY KEY,
track_id integer NOT NULL REFERENCES Track(track_id),
collect_id integer NOT NULL REFERENCES Collection(collect_id)
);