use movie_analysis;
create table directors (
    director_id int primary key,
    director_name varchar(100) not null,
    country varchar(50)
);
create table genres (
    genre_id int primary key,
    genre_name varchar(50) not null
);
create table movies (
    movie_id int primary key,
    movie_name varchar(100) not null,
    release_year int,
    director_id int,
    genre_id int,
    duration int,
    language varchar(50),
    foreign key (director_id)
        references directors(director_id),
    foreign key (genre_id)
        references genres(genre_id)
);
create table actors (
    actor_id int primary key,
    actor_name varchar(100) not null,
    gender varchar(10),
    country varchar(50)
);
create table movie_cast (
    cast_id int primary key,
    movie_id int,
    actor_id int,
    role_name varchar(100),
    foreign key (movie_id)
        references movies(movie_id),
    foreign key (actor_id)
        references actors(actor_id)
);
create table ratings (
    rating_id int primary key,
    movie_id int,
    rating decimal(3,1),
    total_reviews int,
    foreign key (movie_id)
        references movies(movie_id)
);
create table box_office (
    box_office_id int primary key,
    movie_id int unique,
    budget decimal(12,2),
    collection decimal(12,2),
    foreign key (movie_id)
        references movies(movie_id)
);