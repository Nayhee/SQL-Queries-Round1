select Count(s.Id) as NumAlbumSongs, al.Title as AlbumTitle
from Song s
join Album al on al.Id=s.AlbumId
group by al.Title;

