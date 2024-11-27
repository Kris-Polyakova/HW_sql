--Задание 2

--Название и продолжительность самого длительного трека.
SELECT name, time FROM track
WHERE time = (SELECT MAX(time) FROM track);

--Название треков, продолжительность которых не менее 3,5 минут.
SELECT name FROM track
WHERE time/60 >= 3.5;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT name FROM collection
WHERE year BETWEEN 2018 AND 2020;

--Исполнители, чьё имя состоит из одного слова.
SELECT name FROM music_artist
WHERE name NOT LIKE '% %';

--Название треков, которые содержат слово «мой» или «my».
SELECT name FROM track
WHERE LOWER(name) LIKE '%мой%' OR LOWER(name) LIKE '%my%'; 


--Задание 3

--Количество исполнителей в каждом жанре.
SELECT genre_id, COUNT(music_artist_id) FROM music_artist_genre
GROUP BY genre_id;

--Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT COUNT(album_id) FROM track t
JOIN album a ON t.album_id = a.id 
WHERE a."year" BETWEEN 2019 AND 2020;

--Средняя продолжительность треков по каждому альбому.
SELECT AVG(time) FROM track t
JOIN album a ON t.album_id = a.id 
GROUP BY a.name

-- Все исполнители, которые не выпустили альбомы в 2020 году. 
SELECT ma.name FROM music_artist ma 
JOIN music_artist_album maa ON ma.id = maa.music_artist_id 
JOIN album a ON a.id = maa.album_id 
WHERE a."year" != 2020

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT DISTINCT c.name FROM collection c 
JOIN track_collection tc ON c.id = tc.collection_id 
JOIN track t ON t.id = tc.track_id 
JOIN music_artist_album maa ON t.album_id = maa.album_id 
JOIN music_artist ma ON maa.music_artist_id = ma.id 
WHERE ma.name = 'Deep Purple'

