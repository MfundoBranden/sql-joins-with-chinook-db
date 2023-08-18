select count(*) from genres;

select * from playlists;

select * from playlist where Name Like '%s'


select * from artists where Name = "A%"


select * from albums where ArtistId = 150;

--Find all the albums for a given artist
select Albumid, Title from artists 
join albums on artists.ArtistId = albums.ArtistId 
where artists.ArtistId = 17;


--where Name = "Any Winehouse"
select * artists
where artists.ArtistId = "Winehouse"


--Find all the songs for a given Genre
select * from tracks;


select * from genres
join tracks on Genres.GenreId = tracks.GenreId 
where Genres.Name = "Blues"


select * from genres
join tracks on Genres.GenreId = tracks.GenreId 
where Genres.GenreId = 5;


--* Find all the songs in a playlist - by playlist name...
SELECT * FROM playlists
JOIN playlist_track on playlist_track.PlaylistId = playlists.PlaylistId
JOIN tracks on playlist_track.TrackId = tracks.TrackId
WHERE playlists.Name = "Music"

SELECT * FROM playlists
JOIN playlist_track on playlist_track.PlaylistId = playlists.PlaylistId
JOIN tracks on playlist_track.TrackId = tracks.TrackId
WHERE playlists.Name = "Classical"

--Find all the artists for a given Genre
SELECT * FROM Genres
JOIN tracks on tracks.GenreId = genres.GenreId
JOIN albums on albums.AlbumId = tracks.AlbumId
JOIN artists on  artists.ArtistId =Albums.ArtistId
WHERE Genres.Name = "Rock"


--Find the Playlist with the most / least songs (will need a group by  and count )
SELECT * from playlists
JOIN playlist_track
on playlists.PlaylistId = playlist_track.PlaylistId
GROUP BY playlists.Name
ORDER BY count(*) DESC
LIMIT 1;

SELECT playlists.Name, count(*) from playlists
JOIN playlist_track
on playlists.PlaylistId = playlist_track.PlaylistId
GROUP BY playlists.Name
ORDER BY count(*) DESC
LIMIT 1;

--Find the total for a given invoice (will need a sum)
SELECT * from invoices where invoices.InvoiceId =17


--Find all the playlists containing a given genre
select * from genres
join tracks on Genres.GenreId = tracks.GenreId 
where Genres.Name = "Blues"

--Find the biggest/smallest invoice amounts (needs group by)
SELECT InvoiceId, min(total) from invoices
SELECT InvoiceId, max(total) from invoices

--Find the artist with the most/least songs (needs group by) (edited)

SELECT artists.Name, count(*) as Trackcount from artists
JOIN albums on albums.ArtistId = artists.ArtistId
join tracks on tracks.AlbumId = albums.AlbumId
GROUP BY artists.Name
ORDER BY TrackCount DESC
---ORDER BY TrackCount ASC
limit 5
---offset 5