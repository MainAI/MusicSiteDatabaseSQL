select genre_id, count(singer_id) from genresinger
	group by genre_id;
	
select count(t.name) from track t 
	join album a on  t.album_id = a.id 
	where year_release between 2019 and 2020;
	
select album_id, round(avg(duration), 2) from track t
	join album a on  t.album_id = a.id 
	group by album_id
	order by album_id;

select distinct s.name from singer s
	where s.name not in (
		select s.name from singer s
		left join albumsinger a on s.id = a.singer_id 
		left join album a2 on a.album_id = a2.id
		where a2.year_release = 2020);

select distinct c.name from collection c 
	left join collectiontrack c2 on c.id = c2.collection_id 
	left join track t on c2.track_id = t.id 
	left join album a on t.album_id = a.id 
	left join albumsinger a2 on a.id = a2.album_id 
	left join singer s on a2.singer_id = s.id 
	where s.name like 'mini webb';

select a.id from album a 
	left join albumsinger a2 on a.id = a2.album_id 
	left join singer s on a2.singer_id = s.id 
	left join genresinger g on s.id = g.singer_id 
	left join genre g2 on g.genre_id = g2.id 
	group by a.id
	having count(distinct g2.name) > 1
	order by a.id;
	
select t.name from track t 
	left join collectiontrack c on t.id = c.track_id 
	where c.collection_id is null; 

select distinct s.name from singer s 
	right join albumsinger a on s.id = a.singer_id
	right join album a2 on a.album_id = a2.id
	right join track t on a2.id = t.album_id
	where t.duration = (select min(t.duration) from track t);


select distinct a.id from album a
	left join track t on a.id = t.album_id 
    group by a.id
    having count(t.id) = (
        select count(t.id) from track t
        group by t.album_id 
        order by count(t.id)
        limit 1);

	