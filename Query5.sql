Select distinct a.ArtistName, al.Title, g.Name
	from Artist a
		join Album al on al.ArtistId=a.Id
		join Genre g on g.Id=al.GenreId
		where g.Name='Rock' or g.Name='Jazz';
