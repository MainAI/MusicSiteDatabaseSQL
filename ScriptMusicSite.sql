create table if not exists genre (
	id serial primary key,
	name text not null unique
);

create table if not exists singer (
	id serial primary key,
	name text not null unique
);

create table if not exists GenreSinger (
	genre_id integer not null references genre(id),
	singer_id integer not null references singer(id),
	constraint pk primary key (genre_id, singer_id)
);

create table if not exists album (
	id serial primary key,
	name text not null,
	year_release integer check(year_release > 0)
);

create table if not exists AlbumSinger (
	id serial primary key,
	singer_id integer not null references singer(id),
	album_id integer not null references album(id)
);

create table if not exists track (
	id serial primary key,
	name text not null unique,
	duration numeric(4,2) not null,
	album_id integer references album(id)	
);

create table if not exists collection (
	id serial primary key,
	name text not null,
	year_release integer check(year_release > 0)
);

create table if not exists CollectionTrack (
	id serial primary key,
	collection_id integer not null references collection(id),
	track_id integer not null references track(id)
);