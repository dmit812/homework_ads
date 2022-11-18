SELECT g.name, COUNT(l.name) FROM genreofmusic g  
LEFT JOIN performersgenre p ON g.id = p.genre_id 
LEFT JOIN listofperformers l ON p.performers_id = l.id 
GROUP BY g.name
ORDER BY COUNT(l.name);

SELECT aa.name, atl.name FROM artistsalbums AS aa
LEFT JOIN albumtracklist AS atl ON atl.albums_id = aa.id 
WHERE (release_year >= '1997-01-01') AND (release_year <= '1998-12-31')
ORDER BY aa.name;
--Года фильтрую другие, т.к. заданных нет в моей БД, но суть запроса остается та же.

SELECT aa.name, ROUND(CAST(AVG(atl.duration)  AS DEC(12,6)), 2) AS avg_dur FROM artistsalbums aa
LEFT JOIN albumtracklist atl ON atl.albums_id = aa.id
GROUP BY aa.name
ORDER BY aa.name;

SELECT DISTINCT lp.name FROM listofperformers lp
WHERE lp.name NOT IN (
SELECT DISTINCT lp.name FROM listofperformers lp
LEFT JOIN albumsartist ar ON lp.id = ar.performers_id 
LEFT JOIN artistsalbums atl ON atl.id = ar.albums_id 
WHERE atl.release_year BETWEEN '2020-01-01' AND '2020-12-31'
)
ORDER BY lp.name;

SELECT DISTINCT ca.name FROM collectionalbum ca
LEFT JOIN collectiontrack ct ON ca.id = ct.collection_id
LEFT JOIN albumtracklist atl ON atl.id = ct.tracklist_id
LEFT JOIN artistsalbums aa ON aa.id = atl.albums_id
LEFT JOIN albumsartist ar ON ar.albums_id = aa.id 
LEFT JOIN listofperformers lp ON lp.id = ar.performers_id
WHERE lp.name = 'Вольфганг Амадей Моцарт'
ORDER BY ca.name;

SELECT aa.name FROM artistsalbums aa
LEFT JOIN albumsartist ar ON ar.albums_id = aa.id
LEFT JOIN listofperformers lp ON lp.id = ar.performers_id
LEFT JOIN performersgenre pg ON pg.performers_id = lp.id 
LEFT JOIN genreofmusic g ON g.id = pg.genre_id
GROUP BY aa.name
HAVING COUNT(DISTINCT g.name) > 1
ORDER BY aa.name;

SELECT atl.name FROM albumtracklist atl
LEFT JOIN collectiontrack ct ON atl.id = ct.tracklist_id
WHERE ct.tracklist_id IS NULL;

SELECT lp.name, atl.duration FROM albumtracklist atl
LEFT JOIN artistsalbums aa ON aa.id = atl.albums_id  
LEFT JOIN albumsartist ar ON ar.albums_id = aa.id
LEFT JOIN listofperformers lp ON lp.id = ar.performers_id
GROUP BY lp.name, atl.duration
HAVING atl.duration = (SELECT MIN(duration) FROM albumtracklist)
ORDER BY lp.name;
--Если здесь убрать GROUP BY, то ошибка:
--SQL Error [42803]: ОШИБКА: столбец "lp.name" должен фигурировать
--в предложении GROUP BY или использоваться в агрегатной функции

SELECT artistsalbums.name, COUNT(albumtracklist.name) FROM artistsalbums
LEFT JOIN albumtracklist ON albumtracklist.albums_id = artistsalbums.id
GROUP BY artistsalbums.name
HAVING COUNT(albumtracklist.name) = (
		SELECT COUNT(albumtracklist.name) FROM artistsalbums
		LEFT JOIN albumtracklist ON albumtracklist.albums_id = artistsalbums.id
		GROUP BY artistsalbums.name
		ORDER BY COUNT(albumtracklist.name)
		LIMIT 1);











