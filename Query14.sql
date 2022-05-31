select a.ArtistName as ArtistsWithMoreThanOneLabel
from Artist a
join Album al on al.ArtistId=a.Id
group by a.ArtistName
Having Count(al.Label) > 1;
