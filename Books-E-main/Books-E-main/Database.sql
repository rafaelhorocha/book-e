create database dbBooksE;
use dbbookse;

/*
	Tabelas necessárias:
    - Usuario:
		Informações do usuario
    - Livros:
		Armazenar todas as informações importantes dos livros (incluindo qtd em estoque)
    - Compra:
		Armazenar todas as informações da compra
    - Histórico de compras do cliente:
		Guarda todo o historico de compras do cliente (as informações vão ser inseridas a partir de um trigger)
*/

create table usuario(
	id int primary key auto_increment,
    nome varchar(150) not null
);

create table tbLivros(
	id int primary key auto_increment,
    isbn varchar(13) not null,
	nome varchar(100) not null,
    autor varchar(100) not null,
    editora varchar(100) not null,
    sinopse varchar(1000) not null,
    estoque  int not null,
    img_capa varchar(150) not null,
    n_paginas int not null,
    preco decimal(6,2) not null,
    ano_publi year not null,
    genero varchar(100) not null
);

