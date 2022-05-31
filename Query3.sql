Select s.Title,
	a.ArtistName
	from Song s
		Left Join Artist a on s.ArtistId=a.Id;


