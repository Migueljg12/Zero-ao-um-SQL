use sales;

---- Exerc�cio 1
select nome, data_nascimento, cpf, CONVERT(int,DATEDIFF(DAY,DATA_NASCIMENTO,GETDATE())/365) idade
from tb_pessoa
where DATEDIFF(YEAR,DATA_NASCIMENTO,GETDATE()) between  18 and  50
order by idade;

---- Exerc�cio 2
select nome, data_nascimento, cpf, CONVERT(int,DATEDIFF(day,DATA_NASCIMENTO,GETDATE())/365) idade
from tb_pessoa
where data_nascimento between '1978-05-13' and '1978-12-31'
order by data_nascimento;

---- Exerc�cio 3
select nome, data_nascimento, cpf, CONVERT(int,DATEDIFF(day,DATA_NASCIMENTO,GETDATE())/365) idade
from tb_pessoa
where DATEPART(day,data_nascimento) between 10 and 15
order by data_nascimento;

---- Exerc�cio 4
select nome, data_nascimento, cpf, CONVERT(int,DATEDIFF(day,DATA_NASCIMENTO,GETDATE())/365) idade
from tb_pessoa
where nome like '%a';

---- Exerc�cio 5
select nome, data_nascimento, cpf, CONVERT(int,DATEDIFF(day,DATA_NASCIMENTO,GETDATE())/365) idade
from tb_pessoa
where nome like '%nd%';

---- Exerc�cio 6
select nome, data_nascimento, cpf, CONVERT(int,DATEDIFF(day,DATA_NASCIMENTO,GETDATE())/365) idade
from tb_pessoa
where nome like 'A%' or nome like 'G%'
order by nome;

---- Exerc�cio 7
select nome, data_nascimento, cpf, CONVERT(int,DATEDIFF(day,DATA_NASCIMENTO,GETDATE())/365) idade
from tb_pessoa
where nome like '% %'
