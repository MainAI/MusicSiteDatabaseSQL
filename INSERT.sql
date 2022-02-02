insert into singer (id, name)
	values (1, 'ckay'),
	(2, 'glass animals'),
	(3, 'maroon 5'),
	(4, 'adele'),
	(5, 'billie eilish'),
	(6, 'khalid'),
	(7, 'mini webb'),
	(8, 'taylor swift');
	
insert into genre (id, name)
	values (1, 'pop'),
	(2, 'rap'),
	(3, 'r&b'),
	(4, 'soul'),
	(5, 'rock');
	
insert into album (id, name, year_release)
	values (1, '25', 2020),
	(2, 'when we all fall asleep', 2019),
	(3, 'v', 2014),
	(4, 'jordi', 2021),
	(5, 'suncity', 2018),
	(6, 'free spirit', 2019),
	(7, 'seven shades of heardbreak', 2021),
	(8, '21', 2011);
	
insert into track (id, name, duration, album_id)
	values (1, 'maps', '3.10', 3),
	(2, 'better', '2.45', 5),
	(3,'animals', '3.51', 3),
	(4, 'hello', '4.55', 1),
	(5, 'i miss you', '5.49', 1),
	(6, 'the happiest hour', '3.29', 8),
	(7, 'intro', '2.45', 6),
	(8, 'wife 14', '4.39', 8),
	(9, 'lost', '2.53', 4),
	(10, 'my echo', '2.59', 4),
	(11, 'bad guy', '3.14', 2),
	(12, 'halfway', '3.17', 7),
	(13, 'мой день', '2.53', 2),
	(14, 'heavenly', '4.03', 7),
	(15, 'xanny', '4.04', 2);
	
insert into collection (id, name, year_release)
	values (1, 'start', 2020),
	(2, 'chill', 2022),
	(3,'holiday', 2016),
	(4, 'all hits', 2021),
	(5, 'morning', 2017),
	(6, 'vinyl', 2019),
	(7, 'freedom', 2021),
	(8, 'pop rising', 2013);

insert into genresinger (genre_id, singer_id)
	values (2, 1),
	(3, 1),
	(1, 2),
	(1, 3),
	(1, 4),
	(3, 4),
	(3, 5),
	(1, 6),
	(4, 7),
	(5, 8);

insert into albumsinger (id, singer_id, album_id)
	values (1, 4, 1),
	(2, 4, 8),
	(3, 3, 3),
	(4, 3, 4),
	(5, 5, 2),
	(6, 7, 7),
	(7, 6, 6),
	(8, 1, 5);

insert into collectiontrack (id, collection_id, track_id)
	values (1, 1, 2),
	(2, 1, 3),
	(3, 1, 6),
	(4, 2, 2),
	(5, 2, 3),
	(6, 3, 4),
	(7, 3, 5),
	(8, 4, 9),
	(9, 5, 11),
	(10, 5, 12),
	(11, 5, 13),
	(12, 5, 14),
	(13, 5, 15),
	(14, 6, 1),
	(15, 7, 6),
	(16, 7, 7),
	(17, 7, 8),
	(18, 8, 1),
	(19, 8 ,3),
	(20, 8, 5),
	(21, 8, 8);
	
