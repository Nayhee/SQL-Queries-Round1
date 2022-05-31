select al.Id as AlbumId, al.Title as AlbumTitle, s.Title as SongTitle
from Album al
left join Song s on s.AlbumId=al.Id
where s.AlbumId is null;
