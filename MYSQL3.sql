use clinica;
select * from funcionario where nome = 'Maria';
select * from funcionario where nome like 'Maria';
select * from funcionario where nome like 'R%';
select * from funcionario where nome != 'Rita'; /* AO INVES DE USAR O SIMBOLO DE DIFERENTE UTILIZAR O NOT LIKE*/
select * from funcionario where nome not like 'Rita';
select * from funcionario where salario is null;
select * from funcionario where salario is not null;
select * from funcionario where nome like '_a%';
select * from funcionario where nome like '%i_';
select * from funcionario where idade between 40 and 50; /* 40 E 50 TAMBEM ESTAO INCLUIDOS, BETWEEN NAO È ENTRE 40 E 50, E DE UM PARA O OUTRO*/
select * from funcionario where idade between 33 and 50;
select * from consulta;
select * from consulta where data_consulta between '2006-06-14' and '2006-08-01' order by data_consulta;
select * from funcionario where cidade in ('Palhoca', 'Florianopolis'); 
update funcionario set cidade = 'Sao Paulo' where codf = 4;
select distinct cidade from funcionario;
select * from medico where cidade in (select distinct cidade from funcionario);
select * from medico;