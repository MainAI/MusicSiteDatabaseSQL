select name, year_release from album
	where year_release = 2018;
	
select name, duration from track 
	order by duration desc
	limit 1;
	
select name from track
	where duration >= 3.5;
	
select name from collection 
	where year_release between 2018 and 2020;
	
select name from singer 
	where name not like '% %';
	
select name from track 
	where name like '%my%' or name like '%мой%';