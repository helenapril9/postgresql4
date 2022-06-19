
--1 количество исполнителей в каждом жанре;
select jenre_name, count(*) from jenre j 
left join artist_jenre aj on j.id = aj.jenre_id
left join artist on aj.artist_id = artist.id
group by jenre_name
order by count(*) desc;

--2 количество треков, вошедших в альбомы 2019-2020 годов;
select album_year, count(*) from track t 
left join album an on an.id = t.album_id
where album_year >= 2019 and album_year <= 2020
group by album_year
order by count(*) desc;

--3 средняя продолжительность треков по каждому альбому;
select album_name,  avg(diration) from track t 
left join album an on an.id = t.album_id
group by album_name
order by count(*) desc;

--4 все исполнители, которые не выпустили альбомы в 2020 году;
select artist_name from artist a
where artist_name not in (
select artist_name from artist a
left join album_artist aa on a.id = aa.artist_id
left join album ab on ab.id = aa.album_id
where album_year = 2020)
order by artist_name;

--5 названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
select distinct collection_name, artist_name from collection c 
left join collection_track ct on ct.collection_id = c.id
left join track t on t.id = c.id
left join album ab on ab.id = t.album_id 
left join album_artist aa on aa.album_id = ab.id
left join artist art on art.id = aa.artist_id
where artist_name = 'Imany'; 

--6название альбомов, в которых присутствуют исполнители более 1 жанр
select distinct album_name from album a
join album_artist aa on aa.album_id = a.id  
join artist ar on ar.id = aa.artist_id
join artist_jenre aj on aj.artist_id =ar.id 
join jenre j on j.id = aj.jenre_id
group by j.jenre_name, a.album_name
having count(j.jenre_name) > 1;
 
--7 наименование треков, которые не входят в сборники;
select track_name from track t 
left join collection_track as ct on t.id = ct.track_id
where ct.track_id is null


--8  исполнителя(-ей), написавшего самый короткий по продолжительности трек
select diration, artist_name from track t
join artist a on a.id = t.artist_id
group by a.artist_name, t.diration
having t.diration = (select min(diration) from track);


--9 название альбомов, содержащих наименьшее количество треков. 
select album_name, count(*)  from album a 
join track t on t.album_id = a.id
group by album_name
having count(*) = (
select min(cnt) from (
select  album_id, count(*) as cnt from  track 
group by album_id) tt);