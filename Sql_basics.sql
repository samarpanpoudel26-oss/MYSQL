use moviesdb;
select title,industry from movies where industry="Hollywood"; # select title, industry from movies table where industry is Hollywood
select * from movies;
select count(*) from movies where industry="Hollywood"; #count total hollywood movies in movies table
select distinct studio from movies; # give the unique value of the column
select distinct industry from movies;
select * from movies where title like "%thor%"; # % give there could be any other string before or after thor
select * from movies where title like "%america%";
select * from movies where studio=""; #gives the movies that doesnot have studio.Identfiying null value
select * from movies where imdb_rating>=9;
select * from movies where imdb_rating>=6 and imdb_rating<=9; #quering in between
select * from movies where imdb_rating between 6 and 9; #more precise way
select * from movies
where release_year=2022 or release_year=2019 or release_year=2020;
select * from movies # better precise way
where release_year in (2022,2019,2020);
select * from movies # selecting movies by rating on a industry
where industry="Hollywood"
order by imdb_rating desc;
select * from movies # selecting movies by top 5 rating on a industry
where industry="Hollywood"
order by imdb_rating desc limit 5;
select min(imdb_rating) as avg_rating , max(imdb_rating) as max_rating, avg(imdb_rating) as avg_rating from movies;
select industry, count(*) as cnt from movies group by industry order by cnt desc; # for grouping the output
#Having is exectued after group by that is why we cant use where
#Query to print the movie release year where more than 2  movies were release
select release_year, count(*) as movie_count from movies 
group by release_year
having movie_count>2
order by release_year desc;

