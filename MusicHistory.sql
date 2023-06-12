--SELECT s.Title,
--       a.ArtistName
--  FROM Song s
--       LEFT JOIN Artist a on s.ArtistId = a.id;


-- INSERT INTO Genre (Name) VALUES ('Techno');
-- select SongLength from Song where Id = 18;
-- update Song
-- set SongLength = 515
-- where Id = 18;
-- select SongLength from Song where Id = 18;
-- delete from Song where Id = 18;


-- Query all of the entries in the Genre table
--SELECT * FROM Genre;


-- Query all the entries in the Artist table and order by the Artist's name
--SELECT * FROM Artist
--ORDER BY ArtistName;


-- Write a SELECT query that lists all the songs in the Song table and include the Artist name
--SELECT Title, ArtistName FROM Song
--JOIN Artist ON Song.ArtistId = Artist.Id;


-- Write a SELECT query that lists all the Artists that have a Pop Album
--SELECT ArtistName FROM Artist
--JOIN Album ON Artist.Id = Album.ArtistId
--JOIN Genre ON Album.GenreId = Genre.Id
--WHERE Genre.Name = 'Pop';

-- Write a SELECT query that lists ALL of the Artists that have a Jazz or Rock Album
--SELECT ArtistName FROM Artist
--JOIN Album ON Artist.Id = Album.ArtistId
--JOIN Genre ON Album.GenreId = Genre.Id
--WHERE Genre.Name = 'Jazz' OR Genre.Name = 'Rock';


-- Write a SELECT statement that lists the Albums with no songs
--SELECT * FROM Album
--LEFT JOIN Song ON Album.Id = Song.AlbumId
--WHERE Song.Id IS NULL;


-- Using the INSERT statement, add one of your favorite artists to the Artist table.
--INSERT INTO Artist (ArtistName, YearEstablished)
--VALUES ('Sigur Ros', 1994);


-- Using the INSERT statement, add one, or more, albums by your artist to the Album table.
--INSERT INTO Album (Title, ReleaseDate, ArtistId, GenreId, AlbumLength, Label)
--VALUES 
--('Agaetis Byrjun', 1999, 11, 1, 65, 'Smekkleysa'),


-- Using the INSERT statement, add some songs that are on that album to the Song table.
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
--VALUES
--('Svefn-g-englar', 420, 1999, 1, 21, 25),
--('Staralfur', 420, 1999, 1, 21, 25),
--('Flugufrelsarinn', 420, 1999, 1, 21, 25),
--('Ny Batteri', 420, 1999, 1, 21, 25),
--('Hjartad Hamast', 420, 1999, 1, 21, 25),
--('Viorar Vel Til Loftarasa', 420, 1999, 1, 21, 25),
--('Olsen Olsen', 420, 1999, 1, 21, 25),
--('Agaetis Byrjun', 420, 1999, 1, 21, 25),
--('Avalon', 420, 1999, 1, 21, 25),
--('Myrkur', 420, 1999, 1, 21, 25),
--('Njosnavelin', 420, 1999, 1, 21, 25),
--('Svo Hljott', 420, 1999, 1, 21, 25),
--('Untitled 8', 420, 1999, 1, 21, 25);


-- checking to see if the data was entered correctly
--SELECT Id, ArtistName FROM Artist WHERE ArtistName = 'Sigur Ros';
--SELECT Id, Title FROM Album WHERE Title = 'Agaetis Byrjun';


-- Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.
--SELECT Song.Title AS SongTitle, Album.Title AS AlbumTitle, Artist.ArtistName
--FROM Song
--LEFT JOIN Album ON Song.AlbumId = Album.Id
--LEFT JOIN Artist ON Song.ArtistId = Artist.Id
--WHERE Artist.ArtistName = 'Sigur Ros';


-- Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence. 
--SELECT Album.Title, COUNT(Song.Title) AS SongCount
--FROM Album
--LEFT JOIN Song ON Album.Id = Song.AlbumId
--GROUP BY Album.Title;


-- Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
--SELECT Artist.ArtistName, COUNT(Song.Title) AS SongCount
--FROM Artist
--LEFT JOIN Song ON Artist.Id = Song.ArtistId
--GROUP BY Artist.ArtistName;


-- Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
--SELECT Genre.Name, COUNT(Song.Title) AS SongCount
--FROM Genre
--LEFT JOIN Song ON Genre.Id = Song.GenreId
--GROUP BY Genre.Name;


-- Write a SELECT query that lists the Artists that have put out records on more than one record label. Hint: When using GROUP BY instead of using a WHERE clause, use the HAVING keyword
--SELECT Artist.ArtistName, COUNT(DISTINCT Album.Label)
--FROM Artist
--LEFT JOIN Album ON Artist.Id = Album.ArtistId
--GROUP BY Artist.ArtistName
--HAVING COUNT(DISTINCT Album.Label) > 1;


-- Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.
--SELECT Album.Title, Album.AlbumLength
--FROM Album
--Where Album.AlbumLength = (SELECT MAX(AlbumLength) FROM Album);


-- Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.
--SELECT Song.Title, Song.SongLength
--FROM Song
--Where Song.SongLength = (SELECT MAX(SongLength) FROM Song);


-- Modify the previous query to also display the title of the album.
--SELECT Song.Title, Song.SongLength, Album.Title
--FROM Song
--LEFT JOIN Album ON Song.AlbumId = Album.Id
--Where Song.SongLength = (SELECT MAX(SongLength) FROM Song);






















