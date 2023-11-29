create database Petshop;
use Petshop;

create table contato(
ID int not null auto_increment,
numero varchar(11) not null,
primary key (ID)
);

create table endereco(
ID int not null auto_increment,
rua varchar(25) not null,
numero int not null,
cidade varchar(25) not null,
bairro varchar(25) not null,
primary key (ID)
);

create table cliente(
ID int not null auto_increment,
ID_contato int not null,
ID_endereco int not null,
nome varchar(45) not null,
genero varchar(25) not null,
cpf varchar(25) not null,
primary key(ID),
constraint FK_ID_contato foreign key (ID_contato) references contato(ID),
constraint FK_ID_endereco foreign key (ID_endereco) references endereco(ID)
);

create table pet(
ID int not null auto_increment,
ID_cliente int not null,
nome varchar(15),
idade int,
raca varchar(25),
primary key (ID),
constraint fk_ID_cliente_pet foreign key (ID_cliente) references cliente(ID)
);

create table funcionario(
ID int not null auto_increment,
nome varchar(30) not null,
genero varchar(20) not null,
cargo varchar(25) not null,
salario decimal(10,2) not null,
primary key (ID)
);

create table fornecedor(
ID int not null auto_increment,
cnpj varchar(20) not null,
nome varchar(25) not null,
primary key (ID)
);

create table produto(
ID int not null auto_increment,
ID_fornecedor int not null,
nome varchar(25) not null,
descricao varchar(35),
valor decimal(10,2) not null,
estoque int not null,
primary key (ID),
constraint FK_ID_fornecedor foreign key (ID_fornecedor) references fornecedor(ID)
);

CREATE TABLE venda (
    ID INT NOT NULL AUTO_INCREMENT,
    ID_funcionario INT NOT NULL,
    ID_produto INT NOT NULL,
    ID_cliente INT NOT NULL,
    quantidade_produto INT DEFAULT 0,
    servico DECIMAL(7, 2) DEFAULT 0,
    valor_total DECIMAL(10, 2),
    forma_pagamento VARCHAR(20) NOT NULL,
    PRIMARY KEY (ID),
    CONSTRAINT FK_ID_funcionario FOREIGN KEY (ID_funcionario) REFERENCES funcionario(ID),
    CONSTRAINT FK_ID_produto FOREIGN KEY (ID_produto) REFERENCES produto(ID),
    CONSTRAINT FK_ID_cliente_venda FOREIGN KEY (ID_cliente) REFERENCES cliente(ID)
);

create trigger tr_valor_total before insert
on venda for each row
set new.valor_total = (new.servico + new.quantidade_produto * (select valor from produto where ID = new.ID_produto));




