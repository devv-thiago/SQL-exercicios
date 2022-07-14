
/*
Modelando como vai funcionar meu banco

NOME DO LIVRO - CHARACTER(50)
NOME DO AUTOR - CHARACTER(30)
SEXO DO AUTOR - CHARACTER(1)
NUMERO DE PAGINAS - INTEGER(4)
NOME DA EDITORA - CHARACTER(50)
VALOR DO LIVRO - NUMERIC(5)
UF DA EDITORA - CHARACTER(2)
ANO PUBLICADO - INTEGER(4)

*/
CREATE DATABASE EXE_LIVROS;

CREATE TABLE LIVROS(
	NOME_LIVRO VARCHAR(50),
	NUMERO_PAGINAS INT(4),
	NOME_AUTOR VARCHAR(30),
	SEXO_AUTOR CHAR(5),
	EDITORA VARCHAR(50),
	UF_EDITORA CHAR(5),
	ANO_PUBLICADO INT(4),
	VALOR NUMERIC(5)
);

INSERT INTO LIVROS VALUES('Cavaleiro Real',465,'Ana Claudia','F','ATLAS','RJ',2009,49.9),
	('SQL para leigos',450,'João Nunes','M','Addison','SP',2018,98),
	('Receitas Caseiras',210,'Celia Tavares','F','Atlas','RJ',2008,45),
	('Pessoas Efetivas',390,'Eduardo Santos','M','Beta','RJ',2018,78.99),
	('Habitos Saudáveis',630,'Eduardo Santos','M','Beta','RJ',2019,150.98),
	('A Casa Marrom',250,'Hermes Macedo','M','Bubba','MG',2016,60),
	('Estacio Querido',310,'Geraldo Francisco','M','Insignia','ES',2015,100),
	('Pra sempre amigas',510,'Leda Silva','F','Insignia','ES',2011,78.98),
	('Copas Inesqueciveis',200,'Marco Alcantara','M','Larson','RS',2018,130.98),
	('O poder da mente',120,'Clara Mafra','F','Continental','SP',2017,56.58);
	
/*
	Exercicios:
	
	1 – Trazer todos os dados.
	2 – Trazer o nome do livro e o nome da editora
	3 – Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino.
	4 - Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino.
	5 – Trazer os valores dos livros das editoras de São Paulo.

	
	
	Respostas exercicio
	
	1 - SELECT * FROM LIVROS;
	2 - SELECT NOME_LIVRO, EDITORA FROM LIVROS;
	3 - SELECT NOME_LIVRO, UF_EDITORA FROM LIVROS 
		WHERE SEXO_AUTOR LIKE 'M'; 
	4 - SELECT NOME_LIVRO, NUMERO_PAGINAS FROM LIVROS
		WHERE SEXO_AUTOR LIKE 'F';
	5 - SELECT VALOR FROM LIVROS
		WHERE UF_EDITORA LIKE 'SP';
*/	
	
