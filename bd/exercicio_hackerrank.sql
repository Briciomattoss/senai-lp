/*
1° https://www.hackerrank.com/challenges/african-cities/problem?isFullScreen=true
Dadas as tabelas CITY e COUNTRY, consulte os nomes de todas as cidades onde o CONTINENT é 'África'.
Nota: CITY.CountryCode e COUNTRY.Code são colunas-chave correspondentes.
*/

select city.name 
from city inner join country 
on city.countrycode = country.code 
where country.continent = 'Africa';

/*
2° https://www.hackerrank.com/challenges/asian-population/problem?isFullScreen=true
Dadas as tabelas CITY e COUNTRY, consulte a soma das populações de todas as cidades onde o CONTINENTE é 'Ásia'.
Nota: CITY.CountryCode e COUNTRY.Code são colunas-chave correspondentes.
*/

Select SUM(city.population) FROM city
inner join country ON countrycode = code
where continent = 'Asia'

/*
3° https://www.hackerrank.com/challenges/average-population-of-each-continent/problem?isFullScreen=true
Dadas as tabelas CITY e COUNTRY, consulte os nomes de todos os continentes (COUNTRY.Continent) e suas
respectivas populações médias de cidades (CITY.Population) arredondados para o número inteiro mais próximo.
Nota: Utilize a função TRUNCATE para o arredondamento.
*/

select continent, truncate(AVG(city.population),0)
from city inner join country on countrycode = code
group by continent;


