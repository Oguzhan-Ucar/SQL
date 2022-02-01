--Assignment - 2 (SQL | Aggregate Functions & JOINs)

--Instructions:  
--There are multiple questions.
--Use chinook database to answer the questions.

--QUESTİONS:

--1.How many tracks does each album have? Your solution should include Album id and its number of tracks sorted from highest to lowest.

--2.Find the album title of the tracks. Your solution should include track name and its album title.

--3.Find the minimum duration of the track in each album. Your solution should include album id, album title and duration of the track sorted from highest to lowest.

--4.Find the total duration of each album. Your solution should include album id, album title and its total duration sorted from highest to lowest.

--5.Based on the previous question, find the albums whose total duration is higher than 70 minutes. Your solution should include album title and total duration.


--ANSWERS

1.	SELECT AlbumId, COUNT() AS number_of_tracks 
	FROM tracks 
	GROUP BY AlbumId 
	ORDER BY number_of_tracks DESC; 
2.	SELECT name, Title 
	FROM tracks, albums 
	WHERE tracks.AlbumId=albums.AlbumId;
3.	SELECT tracks.AlbumId, albums.Title, MIN(tracks.Milliseconds) AS min_duration 	
	FROM tracks 
	JOIN albums ON tracks.AlbumId = albums.AlbumId 
	GROUP BY tracks.AlbumId, albums.Title 
	ORDER BY min_duration DESC;
4.	SELECT tracks.AlbumId, albums.Title, SUM(tracks.Milliseconds) AS total_duration 	
	FROM tracks 
	JOIN albums ON tracks.AlbumId = albums.AlbumId 
	GROUP BY tracks.AlbumId, albums.Title 
	ORDER BY total_duration DESC; 
5.	SELECT albums.Title, SUM(tracks.Milliseconds) AS total_duration 	
	FROM tracks 
	JOIN albums ON tracks.AlbumId = albums.AlbumId 
	GROUP BY tracks.AlbumId HAVING total_duration  4200000 
	ORDER BY total_duration DESC;
	

--Assignment - 2 (SQL | Toplama Fonksiyonları ve JOIN'ler)

--Talimatlar:
--Birden fazla soru var.
--Soruları yanıtlamak için chinook veritabanını kullanın.

--SORULAR:

--1.Her albümde kaç parça var? Çözümünüz, Albüm kimliğini ve en yüksekten en düşüğe sıralanmış parça sayısını içermelidir.

--2.Parçaların albüm başlığını bulun. Çözümünüz parça adını ve albüm başlığını içermelidir.

--3.Her albümdeki parçanın minimum süresini bulun. Çözümünüz, en yüksekten en düşüğe doğru sıralanmış albüm kimliği, albüm başlığı ve parçanın süresini içermelidir.

--4.Her albümün toplam süresini bulun. Çözümünüz albüm kimliği, albüm başlığı ve en yüksekten en düşüğe sıralanmış toplam süresini içermelidir.

--5.Bir önceki soruya göre toplam süresi 70 dakikadan fazla olan albümleri bulun. Çözümünüz albüm başlığını ve toplam süreyi içermelidir.


--CEVAPLAR	
	
1.	SELECT AlbumId, COUNT() AS number_of_tracks 
	FROM tracks 
	GROUP BY AlbumId 
	ORDER BY number_of_tracks DESC; 
2.	SELECT name, Title 
	FROM tracks, albums 
	WHERE tracks.AlbumId=albums.AlbumId;
3.	SELECT tracks.AlbumId, albums.Title, MIN(tracks.Milliseconds) AS min_duration 
	FROM tracks 
	JOIN albums ON tracks.AlbumId = albums.AlbumId 
	GROUP BY tracks.AlbumId, albums.Title 
	ORDER BY min_duration DESC;
4.	SELECT tracks.AlbumId, albums.Title, SUM(tracks.Milliseconds) AS total_duration 
	FROM tracks 
	JOIN albums ON tracks.AlbumId = albums.AlbumId 
	GROUP BY tracks.AlbumId, albums.Title 
	ORDER BY total_duration DESC; 
5.	SELECT albums.Title, SUM(tracks.Milliseconds) AS total_duration 
	FROM tracks 
	JOIN albums ON tracks.AlbumId = albums.AlbumId 
	GROUP BY tracks.AlbumId HAVING total_duration  4200000 
	ORDER BY total_duration DESC;	
	
	
	
