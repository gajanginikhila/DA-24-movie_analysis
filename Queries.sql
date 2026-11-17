use movie_analysis;
-- Display movies whose box-office collection is between 50 and 200 crores.
select m.movie_name, b.collection
from movies m
join box_office b on m.movie_id = b.movie_id
where b.collection between 50 and 200;

-- Display genres having an average rating greater than 8.
select g.genre_name, avg(r.rating) as average_rating
from genres g
join movies m on g.genre_id = m.genre_id
join ratings r on m.movie_id = r.movie_id
group by g.genre_id, g.genre_name
having avg(r.rating) > 8;

-- Display all directors, including those who have not directed any movies.
select d.director_name, m.movie_name
from directors d
left join movies m
on d.director_id = m.director_id;

-- Display movies whose rating is greater than the overall average rating.
select m.movie_name, r.rating
from movies m
join ratings r on m.movie_id = r.movie_id
where r.rating > (
    select avg(rating)
    from ratings
);

-- The management wants a report showing genres with an average rating above 7.5 and total box-office collection above 100 crores. 
-- Display the genre name, number of movies, average rating, and total collection. Sort by total collection from highest to lowest.
select g.genre_name,
       count(m.movie_id) as total_movies,
       round(avg(r.rating), 2) as average_rating,
       sum(b.collection) as total_collection
from genres g
inner join movies m on g.genre_id = m.genre_id
inner join ratings r on m.movie_id = r.movie_id
inner join box_office b on m.movie_id = b.movie_id
where m.release_year >= 2019
group by g.genre_id, g.genre_name
having avg(r.rating) > 7.5
   and sum(b.collection) > 100
order by total_collection desc;

-- Display all movies and their directors, including movies without a matching director.
select m.movie_name, d.director_name
from directors d
right join movies m
on d.director_id = m.director_id;
