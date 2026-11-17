use movie_analysis;
-- Displays movie name, release year, director, genre, duration and language.
create or replace view movie_details_view as
select
    m.movie_id,
    m.movie_name,
    m.release_year,
    d.director_name,
    g.genre_name,
    m.duration,
    m.language
from movies m
inner join directors d
    on m.director_id = d.director_id
inner join genres g
    on m.genre_id = g.genre_id;
    
select * from movie_details_view;

-- Displays movie names, ratings and number of reviews.
create or replace view movie_ratings_view as
select
    m.movie_name,
    r.rating,
    r.total_reviews
from movies m
inner join ratings r
    on m.movie_id = r.movie_id;
    
select * from movie_ratings_view;

-- Displays movie budget, collection and profit.
create or replace view box_office_view as
select
    m.movie_name,
    b.budget,
    b.collection,
    (b.collection - b.budget) as profit
from movies m
inner join box_office b
    on m.movie_id = b.movie_id;
    
select * from box_office_view;

-- Displays movie names, actor names, gender, country and their roles.
create or replace view movie_cast_details as
select
    m.movie_name,
    a.actor_name,
    a.gender,
    a.country,
    mc.role_name
from movies m
inner join movie_cast mc
    on m.movie_id = mc.movie_id
inner join actors a
    on mc.actor_id = a.actor_id;
    
select * from movie_cast_details;

show full tables where table_type = 'VIEW';