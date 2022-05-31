Select TOP 1 s.Title as SongTitle, s.SongLength as SongDuration, al.Title as AlbumTitle
from Song s
join Album al on al.ID=s.AlbumId
order by s.SongLength desc;