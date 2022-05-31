Select distinct a.ArtistName, al.Title as AlbumTitle, g.Name as GenreName
	from Artist a
		join Album al on al.ArtistId=a.Id
		join Genre g on g.Id=al.GenreId
		where g.Name='Soul';
