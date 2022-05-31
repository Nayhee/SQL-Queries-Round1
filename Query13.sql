select Count(s.Id) as NumGenreSongs, g.Name as GenreName
from Song s
join Genre g on g.Id=s.GenreId
group by g.Name;



