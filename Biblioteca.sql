DROP SCHEMA if exists BIBLIOTECA;
create database BIBLIOTECA;
use BIBLIOTECA;
create table USUARIOS(	
idUsuarios int primary key auto_increment,
nome varchar(150) not null,
cpf varchar(14) not null,
telefone varchar(14) not null,
email varchar(50) not null,
matricula int not null,
logradouro varchar(150) not null,
cep varchar(9) not null,
dataInicioC date not null,
dataFinalC date not null,
curso varchar(50) not null
);
create table LIVROS(
idLivros int primary key auto_increment,
titulo varchar(50) not null,
isbn bigint not null,
anoP year not null,
edicao varchar(10) not null,
editora varchar(50) not null,
paginas int not null,
estoque int not null,
autor varchar(50) not null,
classificacao varchar(50) not null
);
create table EMPRESTIMOS(
idEmpretismos int primary key auto_increment, 
idUsuario int not null,
idLivros int not null,
quantidade int not null,
valor decimal(5,2) not null
);
insert into USUARIOS(nome,cpf,telefone,email,matricula,logradouro,cep,dataInicioC,dataFinalC,curso) values
("Teclaudio Silva","256.156.458-89","(31)98999-9880","tec@gmail.com",159951,"Rua das Antenas 55, pindorama",12312-293,"2023-01-01","2027-12-12","Tecnólogo em fios de cabelo"),
("JON Alves","256.156.458-89","(31)98999-9880","tec@gmail.com",159951,"Rua das Antenas 55, pindorama",12312-293,"2023-01-01","2027-12-12","Banco de Dados"),
("Julio Cezar","256.156.458-89","(31)98999-9880","tec@gmail.com",159951,"Rua das Antenas 55, pindorama",12312-293,"2023-01-01","2027-12-12","Tecnólogo em Sengurança");

insert into LIVROS (titulo,isbn,anoP,edicao,editora,paginas,estoque,autor,classificacao) values
("Oi de cada dia",12345645,"2023","1 edicao","Novatec",122,12,"Marcelo Santos","Terror"),
("O Futuro",12345645,"2023","1 edicao","Novatec",122,12,"Marcelo Santos","Comédia"),
("Bom dia para nós",12345645,"2023","1 edicao","Novatec",122,12,"Marcelo Santos","Romance"),
("Olá Juruma",12345645,"2023","1 edicao","Novatec",122,12,"Marcelo Santos","Suspense");

insert into EMPRESTIMOS (idUsuario,idLivro,quantidade,valor) values
(1,1,1,12.50),
(2,2,1,12.50),
(3,1,1,12.50),
(1,3,1,12.50);
-- SELECIONE O NOME DOS USUARIOS QUE CONTENHA A LETRA B NO NOME
select * from USUARIOS where nome LIKE "%J%";
-- SELECIONE O NOME DOS USUARIOS QUE COMECEM COM A LETRA B 
select * from USUARIOS where nome like "J&";
-- SELECIONE O NOME DOS USUARIOS QUE TERMINAM COM A LETRA B 
select * from USUARIOS where nome like "%J";
select COUNT(valor) from emprestimos; 
select sum(valor) from emprestimos;
select avg(valor) from emprestimos;
select max(valor) from emprestimos;
select min(valor) from emprestimos;
select abs(valor) from emprestimos;
select * from emprestimos;
select nome from USUARIOS where DataInicioC = "2023-01-01" and DataInicioC <= "2025-01-01";