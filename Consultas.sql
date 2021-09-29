/* Consulta a.*/
select distinct filme.nomeEstudiof as Estudio,filme.nomeFilme as Filme,ator.nome
from Filme
inner join genero_filme 
 on filme.nomeFilme = genero_filme.nomeFilmeG
inner join atua
 on filme.nomeFilme = atua.id_filme
inner join ator
 on ator.nr_id = atua.id_ator
where genero_filme.designacaoF='Fantasia'


/* Consulta b.*/
select Ator.nome ,Atua.id_filme,Atua.cache 
from Ator,Atua 
where Ator.nr_id = Atua.id_ator 
order by cache desc;

/* Consulta c.*/
select gf.nomeFilmeG as Filme, gf.designacaoF as Genero, f.id_realizador as Realizador, f.custo
from genero_filme gf,filme f, realizador r
where gf.nomeFilmeG = f.nomeFilme
and r.nomeRealizador = f.id_realizador
and gf.designacaoF = 'Aventura'
order by f.custo desc
FETCH FIRST 1 ROWS ONLY


/* Consulta d.*/
select r.nomeRealizador as Realizador , f.nomeFilme as Filme
from realizador r, ator a ,filme f
where r.id_ator = a.nr_id
and r.nomeRealizador = f.id_realizador


/*Consulta e.*/
select Cartaz.id_filme as Filme, c.nomeCinema as Cinema,c.Localidade as Localidade, f.nomeEstudioF as Estudio
from Cinema c
inner join Cartaz
on c.id_cinema = Cartaz.id_cinema
inner join Filme f
on Cartaz.id_filme = f.nomeFilme
where c.nomeCinema = 'Luso Mundo' and c.localidade = 'Oeiras' and f.nomeEstudioF = '20th Century Fox' 


/* PARTE_2 8.2.2.3 */
select nome, dt_nasc, trunc(to_number(sysdate - to_date(dt_nasc))/365.25)
as Idade from ator;