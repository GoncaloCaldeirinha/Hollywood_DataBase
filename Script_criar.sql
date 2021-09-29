drop table Filme_log;
drop table personagem;
drop table genero_filme;
drop table Genero;
drop table Atua;
drop table Cartaz;
drop table Filme;
drop table Estudio;
drop table Cinema;
drop table TipoPapel;
drop table Realizador cascade constraints;
drop table Ator ;





/* TABELA ESTUDIO */ 
create table Estudio ( nomeEstudio varchar(20) PRIMARY key,
                       dt_fundacao date NOT NULL,
                       lucro float not null,
                       responsavel varchar(20) not NULL,
                       end_morada varchar(40) not null,
					   end_nrporta int not null,
                       end_codpostal varchar(8) not null);
                       
/* TABELA ATOR */ 
create table Ator (nr_id int PRIMARY KEY,
                   nome varchar(20) not null,
                   nacionalidade varchar(20) not null,
                   nr_ss number(12) not null,
                   dt_nasc date not null,
                   tlm_movel number(9),
                   tlm_fixo number(9),
                   email varchar(40) not null,
                   sexo char(1) not null,
                   check (sexo in ('M' ,'F'))
                   );                       

/* TABELA REALIZADOR */ 
create table Realizador ( nomeRealizador varchar(20) PRIMARY key,
                          contacto int not null,
                          id_ator int,
                          FOREIGN KEY(id_ator) REFERENCES Ator(nr_id)); 
/* TABELA CINEMA */                           
create table Cinema ( nomeCinema varchar(20) not null,
                      id_cinema int primary key,
                      localidade varchar(30) not null);

/* TABELA TIPO_PAPEL */                     
create table TipoPapel (personagem varchar(20) PRIMARY KEY);

                   
/* TABELA GENERO */ 
create table Genero (designacao varchar(20) primary key);

/* TABELA PERSONAGEM */ 
create table Personagem (id_ator int not null,
                         nomePersonagem varchar(20) not null,
                         FOREIGN KEY(id_ator) REFERENCES Ator(nr_id),
                         FOREIGN KEY(nomePersonagem) REFERENCES TipoPapel(personagem),
                         constraint pk_Personagem primary key (id_ator,nomePersonagem));
              
/* TABELA FILME */                    
create table Filme (nomeFilme varchar(40) PRIMARY KEY,
                   tituloPT varchar(40) ,
                   custo number(20,2) not null,
                   duracao int not null,
                   ano_lancamento number(4) not null,
                   id_realizador varchar(20) not null,
                   nomeEstudioF varchar(20) not null constraint filme_estudio_fk REFERENCES Estudio(nomeEstudio),
                   FOREIGN KEY (id_realizador) REFERENCES Realizador(nomeRealizador)
                   ); 
                  
                  
/* TABELA GENERO_FILME */ 
create table Genero_Filme(designacaoF varchar(20) not null,
                          nomeFilmeG varchar(40) not null ,
                          FOREIGN KEY(designacaoF) REFERENCES Genero(designacao),
                          FOREIGN KEY(nomeFilmeG) REFERENCES Filme(nomeFilme),
                          constraint pk_Genero_Filme primary key (designacaoF,nomeFilmeG)); 

/* TABELA ATUA */                        
create table Atua(id_ator int not null,
                  id_filme varchar(20) not null,
                  cache float(6) not null,
                  nome_personagem varchar(20) not null,
                  FOREIGN KEY(id_ator) REFERENCES Ator(nr_id),
                  FOREIGN KEY(id_filme) REFERENCES Filme(nomeFilme),
                  constraint pk_Atua primary key (id_ator,id_filme)
                  );  
                  
/* TABELA CARTAZ */                   
create table Cartaz(id_cinema int not null,
                  id_filme varchar(20) not null,
                  FOREIGN KEY(id_cinema) REFERENCES Cinema(id_cinema),
                  FOREIGN KEY(id_filme) REFERENCES Filme(nomeFilme),
                  constraint pk_cartaz primary key (id_cinema,id_filme)  
                  );


/* TABELA Filme_log */
create table Filme_log(nomeFilme varchar(40) not null,
                     custo_anterior number(20,2) not null,
                     custo_atual number(20,2) not null,
                     data date,
                     constraint fk_Filme foreign key (nomeFilme) 
                     references Filme(nomeFilme)
                     );