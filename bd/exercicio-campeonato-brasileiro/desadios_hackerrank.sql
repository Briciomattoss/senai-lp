/*
1 https://www.hackerrank.com/challenges/select-all-sql/problem?isFullScreen=true
*/
select * from city;

/*
2 https://www.hackerrank.com/challenges/select-by-id/problem?isFullScreen=true
*/
select * from city where id = '1661';

/*
3 https://www.hackerrank.com/challenges/weather-observation-station-1/problem?isFullScreen=true
*/
select city, state from station;

/*
4 https://www.hackerrank.com/challenges/japanese-cities-attributes/problem?isFullScreen=true
*/
select * from city where countrycode = 'JPN';

/*
5 https://www.hackerrank.com/challenges/revising-the-select-query/problem?isFullScreen=true
*/
select * from city where countrycode = 'USA' and population > 100000;

/*
6 https://www.hackerrank.com/challenges/revising-the-select-query-2/problem?isFullScreen=true
*/
select name from city where countrycode = 'USA' and population > 120000;

/*
7 https://www.hackerrank.com/challenges/weather-observation-station-6/problem?isFullScreen=true
*/
SELECT  distinct city from station WHERE city LIKE 'a%'
or city like 'e%'
or city like 'i%'
or city like 'o%'
or city like 'u%';

/*
8 https://www.hackerrank.com/challenges/weather-observation-station-7/problem?isFullScreen=true
*/
SELECT  distinct city from station WHERE city LIKE '%a'
or city like '%e'
or city like '%i'
or city like '%o'
or city like '%u';

/*
9 https://www.hackerrank.com/challenges/weather-observation-station-8/problem?isFullScreen=true
*/
SELECT  distinct city from station WHERE 
(city LIKE '%a'
or city like '%e' 
or city like '%i'
or city like '%o'
or city like '%u')
and
(city LIKE 'a%'
or city like 'e%' 
or city like 'i%'
or city like 'o%'
or city like 'u%');