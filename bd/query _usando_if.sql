select * from classificacao;

WITH partida as (
select 
	rodada,
	id_mandante as id_time,
    gol_mandante as gol_feito,
    gol_visitante as gol_sofrido
from partida
UNION ALL
select
	rodada,
    id_visitante,
    gol_visitante,
    gol_mandante
from partida),
resultado as (
select 
	rodada,
    sigla, 
    nome, 
    gol_feito,
    gol_sofrido,
    gol_feito - gol_sofrido saldo_gols,
    if(gol_feito > gol_sofrido,3,if(gol_feito = gol_sofrido,1,0)) pontos,
    if(gol_feito > gol_sofrido,1,0) V,
    if(gol_feito = gol_sofrido,1,0) E,
    if(gol_feito < gol_sofrido,1,0) D
from partida as p
INNER JOIN TIME as t on t.id_time = p.id_time)
select 
    sigla,
    nome,
    SUM(gol_feito) gol_feito,
    SUM(gol_sofrido) gol_sofrido,
    SUM(saldo_gols) saldo_gols,
    SUM(pontos) pontos,
    SUM(V) V,
    SUM(E) E,
    SUM(D) D
from resultado
group by
	sigla,
    nome;
    