use campeonatobrasileiro;

select * from estadio;
select * from time;
select * from partida;
select * from jogador;
select * from evento;
select * from vw_mandante;
create view vw_mandante as (
select	
    sigla,
    sum(pontos) as pontos,
    count(*) qt_partidas,
    sum(if(pontos = 3, 1 , 0)) vitoria,
    sum(if(pontos = 1, 1 , 0)) empate,
    sum(if(pontos = 0, 1 , 0)) derrota,
    sum(gol_mandante) as gols,
    sum(gol_visitante) as gols_sofridos, 
    sum(gol_mandante - gol_visitante) as saldo_gols
from (
	select 
		sigla, 
		gol_mandante, 
		gol_visitante,
		if (gol_mandante > gol_visitante, 3 , 
		if (gol_mandante = gol_visitante, 1 , 0)) as pontos
	from partida as p 
	inner join time as t on p.id_mandante = t.id_time
	where gol_mandante is not null and gol_visitante is not null
) as tb
group by sigla);

select * from vw_visitante;
create view vw_visitante as (
select	
    sigla,
    sum(pontos) as pontos,
    count(*) qt_partidas,
    sum(if(pontos = 3, 1 , 0)) vitoria,
    sum(if(pontos = 1, 1 , 0)) empate,
    sum(if(pontos = 0, 1 , 0)) derrota,
    sum(gol_visitante) as gols,
    sum(gol_mandante) as gols_sofridos, 
    sum(gol_visitante - gol_mandante) as saldo_gols
from (
	select 
		sigla, 
		gol_mandante, 
		gol_visitante,
		if (gol_visitante > gol_mandante, 3 , 
		if (gol_visitante = gol_mandante, 1 , 0)) as pontos
	from partida as p 
	inner join time as t on p.id_visitante = t.id_time
	where gol_mandante is not null and gol_visitante is not null
) as tb
group by sigla);

-- montar a view da classificação

create view classificacao as (
select 	
    sigla ,
    sum(pontos) pontos,
    sum(qt_partidas) J, 
    sum(vitoria) V, 
    sum(saldo_gols) SG,
    concat(sum(gols),':',sum(gols_sofridos)) Gol,
    sum(empate) E, 
    sum(derrota) D
from (select * from vw_mandante
		union all
	  select * from vw_visitante) as tb
group by sigla);
select row_number() over() N, c.* from classificacao as c order by pontos desc, V desc, SG desc;

-- 01
select * from evento;
SET SQL_SAFE_UPDATES=0;
update evento set descricao = 'Substituição' where descricao =  'Substitution';
select * from evento;


-- 02

select id_partida, rodada, tm.sigla, gol_mandante, gol_visitante, tv.sigla
from partida as p
inner join time as tm on id_mandante = tm.id_time 
inner join time as tv on id_visitante = tv.id_time
where gol_mandante is null or rodada >= 35
order by id_partida;

update partida set gol_mandante = 1 , gol_visitante = 1 where id_partida = 341;
update partida set gol_mandante = 0 , gol_visitante = 1 where id_partida = 342;
update partida set gol_mandante = 1 , gol_visitante = 1 where id_partida = 343;
update partida set gol_mandante = 2 , gol_visitante = 2 where id_partida = 344;
update partida set gol_mandante = 4 , gol_visitante = 1 where id_partida = 345;
update partida set gol_mandante = 1 , gol_visitante = 1 where id_partida = 346;
update partida set gol_mandante = 3 , gol_visitante = 1 where id_partida = 347;
update partida set gol_mandante = 0 , gol_visitante = 0 where id_partida = 348;
update partida set gol_mandante = 0 , gol_visitante = 0 where id_partida = 349;
update partida set gol_mandante = 1 , gol_visitante = 1 where id_partida = 350;
update partida set gol_mandante = 2 , gol_visitante = 3 where id_partida = 351;
update partida set gol_mandante = 1 , gol_visitante = 3 where id_partida = 352;
update partida set gol_mandante = 1 , gol_visitante = 2 where id_partida = 353;
update partida set gol_mandante = 2 , gol_visitante = 4 where id_partida = 354;
update partida set gol_mandante = 2 , gol_visitante = 2 where id_partida = 355;
update partida set gol_mandante = 2 , gol_visitante = 1 where id_partida = 356;
update partida set gol_mandante = 3 , gol_visitante = 2 where id_partida = 357;
update partida set gol_mandante = 2 , gol_visitante = 0 where id_partida = 358;
update partida set gol_mandante = 1 , gol_visitante = 1 where id_partida = 359;
update partida set gol_mandante = 1 , gol_visitante = 1 where id_partida = 360;
update partida set gol_mandante = 0 , gol_visitante = 1 where id_partida = 361;
update partida set gol_mandante = 1 , gol_visitante = 2 where id_partida = 362;
update partida set gol_mandante = 1 , gol_visitante = 1 where id_partida = 363;
update partida set gol_mandante = 1 , gol_visitante = 0 where id_partida = 364; 
update partida set gol_mandante = 2 , gol_visitante = 0 where id_partida = 365; 
update partida set gol_mandante = 3 , gol_visitante = 0 where id_partida = 366; 
update partida set gol_mandante = 1 , gol_visitante = 2 where id_partida = 367; 
update partida set gol_mandante = 1 , gol_visitante = 2 where id_partida = 368; 
update partida set gol_mandante = 3 , gol_visitante = 1 where id_partida = 369; 
update partida set gol_mandante = 0 , gol_visitante = 3 where id_partida = 370;




update partida set gol_mandante = 0 , gol_visitante = 1 where id_partida = 371;
update partida set gol_mandante = 0 , gol_visitante = 1 where id_partida = 372;
update partida set gol_mandante = 0 , gol_visitante = 1 where id_partida = 373;
update partida set gol_mandante = 0 , gol_visitante = 1 where id_partida = 374;
update partida set gol_mandante = 0 , gol_visitante = 1 where id_partida = 375;
update partida set gol_mandante = 0 , gol_visitante = 1 where id_partida = 376;
update partida set gol_mandante = 0 , gol_visitante = 1 where id_partida = 377;
update partida set gol_mandante = 0 , gol_visitante = 1 where id_partida = 378;
update partida set gol_mandante = 0 , gol_visitante = 1 where id_partida = 379;
update partida set gol_mandante = 0 , gol_visitante = 1 where id_partida = 380;


-- 03
select * from evento;
group by descricao;

select minuto, COUNT(*) quantidade from evento
where -- descricao like 'Gol%' and descricao not like '%Var&'
descricao in ('Gol (Gol de campo)','Gol (Pênalti)',' Gol (Gol Contra)')
group by minuto
order by quantidade desc;


-- 04 

select * from casa;




-- 05

select id_jogador, SUM(if(descricao = 'Cartão Amarelo' 

