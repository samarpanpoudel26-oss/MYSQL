#Excercise questions from codebasics course
use moviesdb;

# Print all movie titles and release year for all Marvel Studios movies.
select title,release_year from movies
where studio="Marvel Studios";

# Print all movies that have Avenger in their name.
select * from movies 
where title like "%Avenger%";

# Print the year when the movie "The Godfather" was released.
select release_year from movies
where title="The Godfather";

# Print all distinct movie studios in the Bollywood industry.
select distinct studio from movies
where industry="Bollywood";

#Print all movies in the order of their release year (latest first)
select * from movies 
order by release_year desc;

# All movies released in the year 2022
select * from movies
where release_year=2022;

# Now all the movies released after 2020
select * from movies
where release_year > 2020;

# All movies after the year 2020 that have more than 8 rating
select * from movies
where release_year> 2020 and imdb_rating>8;

# Select all movies that are by Marvel studios and Hombale Films
select * from movies
where studio in ("Marvel studios","hombale films");

#Select all THOR movies by their release year
select title, release_year from movies
where title like "%thor%"
order by release_year;

# Select all movies that are not from Marvel Studios
select * from movies
where studio != "Marvel Studios";

#How many movies were released between 2015 and 2022
select count(*) as num from movies
where release_year between 2015 and 2022;

# Print the max and min movie release year
select min(release_year) as min_year, max(release_year) as max_year 
from movies;

# Print each year along with the  number of movies released in that year, starting from the most recent year
select release_year, count(*) as movie_count from movies
group by release_year
order by release_year desc;

#Print profit % for all the movies from financials table
select * ,round((revenue-budget)/budget *100,2)as profit_percent
from financials;

# Show all the movies with their language names
select title,name 
from movies 
join languages
using (language_id);

#Show all Telugu movie names (assuming you don't know the languageid for Telugu)
select title,name
from movies
right join languages
using (language_id)
where name="Telugu";

# Show the language and number of movies released in that language
select name,count(*) as num_movies
from movies
right join languages
using (language_id)
group by name
order by num_movies desc;



