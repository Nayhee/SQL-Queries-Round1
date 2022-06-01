Select *
from Genre;

Select *
from Artist
order by ArtistName;

Select s.Title,a.ArtistName
from Song s
Join Artist a on s.ArtistId=a.Id;

Select distinct a.ArtistName, al.Title as AlbumTitle, g.Name as GenreName
from Artist a
join Album al on al.ArtistId=a.Id
join Genre g on g.Id=al.GenreId
where g.Name='Soul';

Select distinct a.ArtistName, al.Title as AlbumTitle, g.Name as GenreName
from Artist a
join Album al on al.ArtistId=a.Id
join Genre g on g.Id=al.GenreId
where g.Name='Rock' or g.Name='Jazz';

select al.Id as AlbumId, al.Title as AlbumTitle, s.Title as SongTitle
from Album al
left join Song s on s.AlbumId=al.Id
where s.AlbumId is null;

Insert into Artist (ArtistName, YearEstablished) Values ('August Burns Red', 2010);

INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Constellations', '10/12/2002', 2268, 'ABR Records', 28, 5);

INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Back Burner', 61, '12/03/2002', 5, 28, 23);
INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Composure', 68, '12/03/2002', 5, 28, 23);

Select s.Title as SongTitle, al.Title as AlbumTitle, a.ArtistName as ArtistName
from Album al
left join Song s On s.AlbumId = al.Id
left join Artist a On a.Id=al.ArtistId
where a.ArtistName='August Burns Red';

select Count(s.Id) as NumAlbumSongs, al.Title as AlbumTitle
from Song s
right join Album al on al.Id=s.AlbumId
group by al.Title;

select Count(s.Id) as NumArtistSongs, a.ArtistName
from Artist a
left join Song s on s.ArtistId=a.Id
group by ArtistName;

select Count(s.Id) as NumGenreSongs, g.Name as GenreName
from Song s
join Genre g on g.Id=s.GenreId
group by g.Name;

select a.ArtistName as ArtistsWithMoreThanOneLabel, Count(Distinct al.Label) as NumOfAlbums
from Artist a
join Album al on al.ArtistId=a.Id
group by a.ArtistName
Having Count(al.Label) > 1;

Select TOP 1 al.Title as AlbumTitle, al.AlbumLength as AlbumDuration
from Album al
order by al.AlbumLength desc;

Select TOP 1 s.Title as SongTitle, s.SongLength as SongDuration, al.Title as AlbumTitle
from Song s
join Album al on al.ID=s.AlbumId
order by s.SongLength desc;





select Name
from Grade;

select Name
from Emotion;

select Count(Id) as NumPoemsInDB
from Poem;

select Top 76 a.Name as AuthorName, g.Name as Grade, ge.Name as Gender
from Author a
join Grade g on g.id=a.GradeId
join Gender ge on ge.Id=a.GenderId
order by. a.Name desc;

select Sum(WordCount) as TotalWordCount
from Poem;

select Top 1 p.Title, p.CharCount
from Poem p
order by p.CharCount desc;

select Count(a.Id) as NumThirdGradeAuthors, g.Name
from Author a
join Grade g on g.Id=a.GradeId
where g.Name='3rd';