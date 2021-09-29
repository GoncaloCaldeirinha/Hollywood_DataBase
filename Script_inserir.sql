DELETE FROM personagem;
DELETE FROM genero_filme;
DELETE FROM Genero;
DELETE FROM Cartaz;
DELETE FROM Atua;
DELETE FROM Filme;
DELETE FROM Realizador;
DELETE FROM Ator;
DELETE FROM Estudio;
DELETE FROM Cinema;
DELETE FROM TipoPapel;




/*    TABELA ESTUDIO    */
insert into Estudio values ('20th Century Fox','10-03-2001',300000000,'Rogelio de La Vega','Avenida Jose Carlos Almeida','32','4000-001');
insert into Estudio values ('Paramount Pictures ','02-06-2012',400000000,'Jane Villanueva','Avenida Dom Afonso Henriques','33','4000-001');
insert into Estudio values ('Sony Pictures ','09-11-2010',500000000,'Rafael Solano','Avenida Da Liberdade','35','4000-003');
insert into Estudio values ('NBC Universal','12-03-2004',300000000,'Michael Cordero ','Rua Júlio Dinis Fast-Food','40','4000-001');
insert into Estudio values ('Warner Bros','10-09-1984',600000000,'Lina Santillan','Largo Luís Braille','30','4000-001');
insert into Estudio values ('Walt Disney Pictures','02-07-1997',300000000,'Betty Cooper','Rua Professor Valadares','28','4000-003');


/*    TABELA CINEMA    */
insert into Cinema values ('Nitehawk Cinema',1010101,'NewYork');
insert into Cinema values ('AMC 84th Street 6',2020202,'NewYork');
insert into Cinema values ('El Capitan Theatre',3030303,'Los Angeles');
insert into Cinema values ('AMC Loews Square 13',4040404,'Los Angeles');
insert into Cinema values ('Texas Theatre',5050505,'Texas');
insert into Cinema values ('Savoy Cinema',6060606,'Boston');
insert into Cinema values ('Luso Mundo',7070707,'Lisboa');
insert into Cinema values ('Luso Mundo',8080808,'Oeiras');
insert into Cinema values ('Castello Lopes',9090909,'Lisboa');
insert into Cinema values ('Castello Lopes',1000101,'Porto');


/*     TABELA TipoPapel   */
insert into TipoPapel values ('Pai');
insert into TipoPapel values ('Mae');
insert into TipoPapel values ('Madrasta');
insert into TipoPapel values ('Padrasto');
insert into TipoPapel values ('Madrinha');
insert into TipoPapel values ('Padrinho');
insert into TipoPapel values ('Tio');
insert into TipoPapel values ('Tia');
insert into TipoPapel values ('Avô');
insert into TipoPapel values ('Avó');
insert into TipoPapel values ('Filho');
insert into TipoPapel values ('Filha');
insert into TipoPapel values ('Vizinho');
insert into TipoPapel values ('Vizinha');
insert into TipoPapel values ('Amante');
insert into TipoPapel values ('Melhor amiga');
insert into TipoPapel values ('Melhor amigo');
insert into TipoPapel values ('Heroi');
insert into TipoPapel values ('Vilao');
insert into TipoPapel values ('Namorado');
insert into TipoPapel values ('Namorada');
insert into TipoPapel values ('Colega de Trabalho');


/* TABELA ATOR  */

insert into Ator values (34155,'Liam Keith Hemsworth','Australiana',781202154609,'01-02-1990',779426721,367623922,'liamkhem@gmail.com','M');
insert into Ator values (43420,'Will Smith','Americano',781202153679,'06-25-1968',379934802,864462493,'willsmith@gmail.com','M');
insert into Ator values (82781,'Sandra Bullock','Americana',123456788,'07-26-1964',612745278, 378716391,'sandrabu@gmail.com','F');
insert into Ator values (46586,'Daniela Ruah','Portuguesa',891202154609,'02-12-1983',256209882,240913315,'daniruah@gmail.com','F');
insert into Ator values (25247,'Robert Pattinson','Britanico',861202154609,'05-13-1986',957950330,632079228,'robertpatt@gmail.com','M');
insert into Ator values (92188,'Justin Baldon','Mexicano',781202176509,'01-24-1984',777952589,914896425,'justinba@gmail.com','M');
insert into Ator values (86273,'Ridley Scott','Americano',991202154609,'03-20-1989',820540438,681672013,'ridleyscott@gmail.com','M');
insert into Ator values (20898,'Daniel Ricardo Nunes','Brasileiro',22153735122,'01-02-1992',282087011,708916948,'danielrnunes@etep.edu.br','M');

/*     TABELA REALIZADOR   */
insert into Realizador values ('Ridley Scott','934872131',86273);
insert into Realizador values ('Will Smith','964985524',43420);
insert into Realizador values ('Tim Burton','926939712',null);
insert into Realizador values ('Quentin Tarantino','922494686',null);
insert into Realizador values ('Nzingha Stewart','967543117',null);
insert into Realizador values ('Josh Cooley','927464343',null);
insert into Realizador values ('Vitor Jesus', '934567231',null);
insert into Realizador values ('Justin Baldon','987543214',92188);

/* TABELA FILME  */

insert into Filme values ('Joker','Coringa','200000000',13,2018,'Ridley Scott','20th Century Fox');
insert into Filme values ('Tall Girl','Rapariga Alta','150000000',6,2019,'Nzingha Stewart','20th Century Fox');
insert into Filme values ('Black Eyes','Olhos pretos','1500000',3,2017,'Ridley Scott','20th Century Fox');
insert into Filme values ('FLG','Última bandeira voando','2500000',3,2015,'Josh Cooley','NBC Universal');
insert into Filme values ('Bad Boys','Maus rapazes','3000000000',15,2003,'Will Smith','20th Century Fox');
insert into Filme values ('Toy Story 4','História de Brinquedos 4','200000000',35,2019,'Josh Cooley','Walt Disney Pictures');
insert into Filme values ('TOP BOY', 'Cabecilha','300000',7,2019,'Vitor Jesus','Warner Bros');
INSERT INTO Filme  VALUES ('It', 'A Coisa', 35000000, 5, 2018,'Justin Baldon', 'Warner Bros' );
INSERT INTO Filme  VALUES ('It Chapter Two', 'A Coisa Capítulo Dois', 70000000, 5, 2019,'Nzingha Stewart','Warner Bros' );
INSERT INTO Filme  VALUES ('Alladdin', 'Aladino', 183000000, 7, 2004,'Tim Burton', 'Walt Disney Pictures' );
INSERT INTO Filme  VALUES ('Maleficent', 'Malevola', 180000000, 7, 2016,'Josh Cooley', 'Walt Disney Pictures' );
INSERT INTO Filme  VALUES ('Toy Story', 'História de um brinquedo', 30000000, 7,2000,'Ridley Scott','Walt Disney Pictures' );
INSERT INTO Filme  VALUES ('Toy Story 2', 'História de um brinquedo 2', 90000000, 7, 2003,'Quentin Tarantino','Walt Disney Pictures' );
INSERT INTO Filme  VALUES ('Toy Story 3', 'História de um brinquedo 3', 200000000, 7, 2009,'Vitor Jesus','Walt Disney Pictures');
INSERT INTO Filme  VALUES ('Is not It Romantic', 'Não é tão Romantico', 31000000, 7, 2019,'Tim Burton','Warner Bros');

/* TABELA GENERO  */
insert into Genero values ('Aventura');
insert into Genero values ('Comedia');
insert into Genero values ('Infantil');
insert into Genero values ('Suspense');
insert into Genero values ('Drama');
insert into Genero values ('Documentacao');
insert into Genero values ('Policial');
insert into Genero values ('Terror');
insert into Genero values ('Ficcao Cientifica');
insert into Genero values ('Gotico');
insert into Genero values ('Comedia Romantica');
insert into Genero values ('Fantasia');


/* TABELA ATUA  */

insert into Atua values (34155,'Joker',500000,'Ted Marco');
insert into Atua values (82781,'Tall Girl',40000,'Sandra Bullock');
insert into Atua values (20898,'Toy Story 4',320000,'Tony Hale');
insert into Atua values (92188,'Bad Boys',320000,'Will Spony');
insert into Atua values (43420,'FLG',450000,'Laton');
insert into Atua values (25247,'Black Eyes',45000,'Sky');


/* TABELA CARTAZ  */

insert into Cartaz values (8080808,'Tall Girl');
insert into Cartaz values (6060606,'Tall Girl');
insert into Cartaz values (7070707,'Tall Girl');
insert into Cartaz values (1000101,'Tall Girl');
insert into Cartaz values (6060606,'Toy Story 4');
insert into Cartaz values (7070707,'Toy Story 4');
insert into Cartaz values (1000101,'Toy Story 4');
insert into Cartaz values (8080808,'FLG');
insert into Cartaz values (1010101,'Joker');
insert into Cartaz values (8080808,'Joker');
insert into Cartaz values (7070707,'Joker');
insert into Cartaz values (8080808,'Black Eyes');
insert into Cartaz values (1000101,'Black Eyes');
insert into Cartaz values (7070707,'Black Eyes');
insert into Cartaz values (7070707,'TOP BOY');


/*TABELA PERSONAGEM */

insert into personagem values(34155,'Tio');
insert into personagem values (82781,'Mae');
insert into personagem values (20898,'Colega de Trabalho');
insert into personagem values (25247,'Vizinho');
/*TABELA GENERO_FILME*/

INSERT INTO Genero_Filme  VALUES ('Suspense', 'It');
INSERT INTO Genero_Filme  VALUES ('Ficcao Cientifica', 'It');
INSERT INTO Genero_Filme  VALUES ('Policial', 'It Chapter Two');
INSERT INTO Genero_Filme  VALUES ('Ficcao Cientifica', 'It Chapter Two');
INSERT INTO Genero_Filme  VALUES ('Comedia', 'Joker');
INSERT INTO Genero_Filme  VALUES ('Suspense', 'Joker');
INSERT INTO Genero_Filme  VALUES ('Fantasia','Alladdin');
INSERT INTO Genero_Filme  VALUES ('Comedia', 'Alladdin');
INSERT INTO Genero_Filme  VALUES ('Gotico', 'Joker');
INSERT INTO Genero_Filme  VALUES ('Aventura', 'Alladdin');
INSERT INTO Genero_Filme  VALUES ('Documentacao', 'Toy Story');
INSERT INTO Genero_Filme  VALUES ('Aventura', 'Toy Story');
INSERT INTO Genero_Filme  VALUES ('Comedia', 'Toy Story');
INSERT INTO Genero_Filme  VALUES ('Comedia Romantica', 'Toy Story 2');
INSERT INTO Genero_Filme  VALUES ('Aventura', 'Toy Story 2');
INSERT INTO Genero_Filme  VALUES ('Terror', 'It');
INSERT INTO Genero_Filme  VALUES ('Infantil', 'Toy Story 3');
INSERT INTO Genero_Filme  VALUES ('Aventura', 'Toy Story 3');
INSERT INTO Genero_Filme  VALUES ('Comedia', 'Toy Story 3');
INSERT INTO Genero_Filme  VALUES ('Policial', 'Toy Story 4');
INSERT INTO Genero_Filme  VALUES ('Aventura', 'Toy Story 4');
INSERT INTO Genero_Filme  VALUES ('Comedia', 'Toy Story 4');
INSERT INTO Genero_Filme  VALUES ('Fantasia', 'Is not It Romantic'); 
INSERT INTO Genero_Filme  VALUES ('Fantasia', 'FLG'); 
INSERT INTO Genero_Filme  VALUES ('Fantasia', 'Black Eyes'); 
