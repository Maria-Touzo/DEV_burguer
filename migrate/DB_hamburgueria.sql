create database if not exists hamburgueria;
use hamburgueria;

create table if not exists hamburgueres (codigo int  AUTO_INCREMENT PRIMARY KEY,
 produto varchar(20), 
 descricao varchar(40), 
 preco float, 
 destaque bool,
 foto varchar(100),
 disponibilidade bool);
 
 INSERT 
 