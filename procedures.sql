use movie_analysis;
-- Display movie details by entering a movie ID.
delimiter //
create procedure get_movie_details(
    in p_movie_id int
)
begin
    select *
    from movies
    where movie_id = p_movie_id;
end //
delimiter ;

call get_movie_details(102);

-- Displays the rating of a movie using its movie ID.
delimiter //
create procedure get_movie_rating(
    in p_movie_id int,
    out p_rating decimal(3,1)
)
begin
    select rating
    into p_rating
    from ratings
    where movie_id = p_movie_id;
end //
delimiter ;

call get_movie_rating(102, @movie_rating);
select @movie_rating;

-- Display the Increase a movie's rating by 1 point and return the updated value.
delimiter //
create procedure increase_rating(
    inout p_rating decimal(3,1)
)
begin
    set p_rating = p_rating + 1.0;
end //
delimiter ;

set @rating = 8.0;
call increase_rating(@rating);
select @rating;
