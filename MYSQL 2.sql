create database clinica;
show databases;
use clinica;
create table ambulatorio (
 nroa int primary key auto_increment,
 andar int not null,
 capacidade smallint );
create table medico (
 codm int primary key auto_increment,
 nome varchar(40) not null,
 idade smallint not null,
 especialidade char(20),
 cpf varchar(11) unique,
 cidade varchar(30),
 fk_nroa int,
 foreign key(fk_nroa) references ambulatorio(nroa)
);
show tables;
describe medico;
alter table medico drop column doenca;
drop table medico;
create table paciente (
 codp int primary key auto_increment,
 nome varchar(40) not null,
 idade smallint not null,
 cidade char(30),
 cpf varchar(11) unique,
 doenca varchar(30) not null
);
create table funcionario (
 codf int primary key auto_increment,
 nome varchar(40) not null,
 idade smallint not null,
 cidade char(30),
 cpf varchar(11) unique,
 salario decimal(10,2),
 cargo varchar(20)
);
create table consulta (
 num_consulta int primary key auto_increment,
 data_consulta date,
 hora time,
 fk_codm int,
 fk_codp int,
 foreign key(fk_codm) references medico(codm),
 foreign key(fk_codp) references paciente(codp)
);
/* Incluir cinco ambulatorios na tabela ambulatorio */
describe ambulatorio;
insert into ambulatorio (andar,capacidade)
 values (1,30),
 (1,50),
 (2,40),
 (2,25),
 (2,55);
select * from ambulatorio;
/* incluir cinco funcionstios *
describe funcionario;
insert into funcionario (nome,idade,cidade,salario,cpf)
 values ('Rita',32,'São José',1200,'20000100000'),
 ('Maria',55,'Palhoca',1220,'30000110000'),
 ('Caio',45,'Florianopolis',1100,'41000100000'),
 ('Carlos',44,'Florianopolis',1200,'51000110000'),
 ('Paula',33,'Florianopolis',2500,'61000111000')
 ;
select * from funcionario;
/* incluir cinco medicos */
select andar from ambulatorio;
select * from ambulatorio;
select * from medico;
desc medico;
insert into medico(nome, idade, especialidade, CPF, cidade, fk_nroa) 
	values('Joao', 40, 'ortopedia', '10000100000', 'Florianopolis', 1 ),
		  ('Maria', 42, 'traumatologia', '10000110000', 'Blumenau', 2),
	      ('Pedro', 51, 'pediatria', '11000100000', 'Sao Jose', 2),
	      ('Carlos', 28, 'ortopedia', '11000110000', 'Joinville', 4),
	      ('Marcia', 33, 'neurologia', '11000111000', 'Biguacu', 3);

select * from paciente;
describe paciente;
insert into paciente (nome, idade, cidade, CPF, doenca) 
	values('Ana', 20, 'Florianopolis', '20000200000', 'gripe'),
			('Paulo', 24, 'Palhoca', '20000220000', 'fratura'),
			('Lucia', 30, 'Biguacu', '22000200000', 'tendinite'),
			('Carlos', 28, 'Joinville', '11000110000', 'sarampo');

select * from funcionario;
select * from consulta; /* NAO FUNCIONOU*/
insert into consulta(fk_codm, fk_codp, data_consulta, hora)
			values(1, 1, '2006/06/12', '14:00'),
				  (1, 4, '2006/06/13', '10:00'),
                  (2 , 1, '2006/06/13', '9:00'),
                  (2, 2, '2006/06/13', '11:00'),
                  (2, 3, '2006/06/13', '14:00'),
                  (2, 4, '2006/06/14', '17:00'),
				  (5, 1, '2006/06/19 ', '18:00'),
                  (5, 3, '2006/06/12', '10:00'),
                  (5, 4, '2006/06/19', '13:00'),
                  (4, 4, '2006/06/20', '13:00'),
                  (4, 4, '2006/06/22', '19:30');
select * from consulta;
describe consulta;				
show tables;
desc funcionario;
alter table funcionario add column nroa int;
alter table funcionario drop column cargo;
select * from paciente;
update paciente set cidade = 'Ilhota' where codp = 2;
update consulta set data_consulta = '2006/07/04' , hora = '12:00' where fk_codm = 1 and  fk_codp = 4;
select * from consulta;
select * from paciente;
update paciente set idade = 21 , doenca = 'hepatite' where codp = 1;
update consulta set hora = '14:30'  where fk_codm = 5 and fk_codp = 3;
update consulta set hora = addtime(hora,'1:30') where fk_codm = 5 and fk_codp =3;
select * from funcionario;
 insert into funcionario (codf, nome, idade, cidade, salario, cpf) 
			values(1, 'Rita', 32, 'Sao Jose', 1200, '20000100000'),
                  (2, 'Maria' , 55, 'Palhoca' , 1220, '30000110000'),
                  (3, 'Caio' , 45, 'Florianopolis', 1100, '41000100000'),
                  (4, 'Carlos', 44, 'Florianopolis', 1200, '51000110000'),
                  (5, 'Paula', 33, 'Florianopolis', 2500, '61000110000');
                  
                  
				  
delete from consulta where hora = '18:00';
select * from consulta;
delete from funcionario where codf = 1;
delete from paciente where doenca = 'cancer' or idade < 10;
delete from medico where cidade = 'Biguacu' or  cidade = 'Palhoca'; 
/* OU FAÇA ISSO: */
delete  from medico where cidade in('Biguacu', 'Palhoca');
select * from medico;
update funcionario set codf = 1 where codf = 4;

                  

