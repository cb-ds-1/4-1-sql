-- launch with:
-- sqlite3 mtcars.sqlite < mtcars-init.sql

-- drop the results table to start from scratch
---drop table results;

-- create results table
create table results (
    mpg float,
    cylinders int,
    displacement float,
    horsepower float,
    weight float,
    acceleration float,
    year int,
    origin int,
    name varchar(256)
);

-- set sqlite3 into CSV mode
.mode csv

-- import the mtcars file and store it in the results table
.import auto.csv results
