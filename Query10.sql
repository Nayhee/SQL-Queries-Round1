Select s.Title as SongTitle, al.Title as AlbumTitle, a.ArtistName as ArtistName
from Album al
left join Song s On s.AlbumId = al.Id
left join Artist a On a.Id=al.ArtistId
where al.ArtistId=28;