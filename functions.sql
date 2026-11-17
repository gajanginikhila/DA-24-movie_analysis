use movie_analysis;
-- Use RANK() to rank movies from highest rating to lowest.
select
    m.movie_name,
    r.rating,
    rank() over(order by r.rating desc) as movie_rank
from movies m
inner join ratings r
on m.movie_id = r.movie_id;

-- Use ROW_NUMBER() to assign a unique number to each movie.
select
    m.movie_name,
    b.collection,
    row_number() over(order by b.collection desc) as row_num
from movies m
inner join box_office b
on m.movie_id = b.movie_id;

-- Displays the highest-rated movie using DENSE_RANK()
select
    m.movie_name,
    r.rating,
    dense_rank() over(order by r.rating desc) as rating_rank
from movies m
inner join ratings r
on m.movie_id = r.movie_id;

-- Use LAG() to display the previous movie's collection when movies are ordered by release year.
select
    m.movie_name,
    m.release_year,
    b.collection,
    lag(b.collection) over(order by m.release_year) as previous_collection
from movies m
inner join box_office b
on m.movie_id = b.movie_id;

-- Display each movie's name, release year, box office collection and the next movie's collection based on release year.
select
    m.movie_name,
    m.release_year,
    b.collection,
    lead(b.collection) over(order by m.release_year) as next_movie_collection
from movies m
inner join box_office b
on m.movie_id = b.movie_id;