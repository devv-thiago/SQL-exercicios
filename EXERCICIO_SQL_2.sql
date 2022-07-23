/* EXERCICIO 2 */

/*
Responda as seguintes questoes

1. Traga os funcionarios que trabalhem no departamento de filmes OU no departamento de roupas


2. O gestor de marketing pediu a lista das funcionarias (AS) = FEMININO que trabalhem no departamento de filmes ou no departamento lar. 
Ele necessita enviar um email para as colaboradoras desses dois setores. OR +  AND *

3. Traga os funcionarios do sexo masculino ou os funcionarios que trabalhem no setor Jardim


/*

/* Criacao do Banco */
create database empresa;

/* Conectando ao Banco */
use empresa;

/* Criando tabela dos funcionarios */
create table funcionarios
  (
      idFuncionario integer,
      nome varchar(100),
      email varchar(200),
      sexo varchar(10),
      departamento varchar(100),
      admissao varchar(10),
      salario integer,
      cargo varchar(100),
      idRegiao int
  );
  
/* Apos isso foi feita a adicao dos dados presentes no outro script */

/* 
RESPONDENDO AS QUESTOES
1. Traga os funcionarios que trabalhem no departamento de filmes OU no departamento de roupas 
*/

select nome as nome_funcionario, idFuncionario as ID, departamento from funcionarios
where departamento = 'Roupas' or
departamento = 'Filmes';

/* Trazendo somente a contagem de quantas pessoas existem */
select departamento, count(*) as quantidade from funcionarios
where departamento = 'Roupas' or
departamento = 'Filmes'
group by departamento;

/* 2. O gestor de marketing pediu a lista das funcionarias (AS) = FEMININO que trabalhem no departamento de filmes ou no departamento lar. 
Ele necessita enviar um email para as colaboradoras desses dois setores. OR +  AND * */
select nome as nome_funcionario, idFuncionario as ID, departamento, sexo from funcionarios
where departamento = 'Filmes' or
departamento = 'Lar' and
sexo = 'Feminino';

/* 3. Traga os funcionarios do sexo masculino que trabalhem no setor Jardim */
select nome, sexo, departamento from funcionarios
where sexo = 'Masculino' and 
departamento = 'Jardim';

/* Trazendo somente a quantidade */
select sexo, departamento, count(*)  as quantidade from funcionarios
where sexo = 'Masculino' and 
departamento = 'Jardim';






