select Count(s.Id) as NumArtistSongs, a.ArtistName as ArtistName
from Song s
join Artist a on a.Id=s.ArtistId
group by ArtistName;

