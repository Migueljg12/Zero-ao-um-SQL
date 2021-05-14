use sales;

---- Exercício 1
select nome, data_nascimento, cpf, CONVERT(int,DATEDIFF(DAY,DATA_NASCIMENTO,GETDATE())/365) idade
from tb_pessoa
where DATEDIFF(YEAR,DATA_NASCIMENTO,GETDATE()) between  18 and  50
order by idade;

---- Exercício 2
select nome, data_nascimento, cpf, CONVERT(int,DATEDIFF(day,DATA_NASCIMENTO,GETDATE())/365) idade
from tb_pessoa
where data_nascimento between '1978-05-13' and '1978-12-31'
order by data_nascimento;

---- Exercício 3
select nome, data_nascimento, cpf, CONVERT(int,DATEDIFF(day,DATA_NASCIMENTO,GETDATE())/365) idade
from tb_pessoa
where DATEPART(day,data_nascimento) between 10 and 15
order by data_nascimento;

---- Exercício 4
select nome, data_nascimento, cpf, CONVERT(int,DATEDIFF(day,DATA_NASCIMENTO,GETDATE())/365) idade
from tb_pessoa
where nome like '%a';

---- Exercício 5
select nome, data_nascimento, cpf, CONVERT(int,DATEDIFF(day,DATA_NASCIMENTO,GETDATE())/365) idade
from tb_pessoa
where nome like '%nd%';

---- Exercício 6
select nome, data_nascimento, cpf, CONVERT(int,DATEDIFF(day,DATA_NASCIMENTO,GETDATE())/365) idade
from tb_pessoa
where nome like 'A%' or nome like 'G%'
order by nome;

---- Exercício 7
select nome, data_nascimento, cpf, CONVERT(int,DATEDIFF(day,DATA_NASCIMENTO,GETDATE())/365) idade
from tb_pessoa
where nome like '% %'
