CREATE DATABASE ESTOQUE;

USE ESTOQUE;

CREATE TABLE tb_categoria(
id int primary key not null auto_increment,
categoria varchar(50) not null

);

CREATE TABLE tb_cidade(
id int primary key not null auto_increment,
cidade varchar(50) not null,
uf char(14) not null

);

CREATE TABLE tb_fornecedor(
id int primary key not null auto_increment,
fornecedor varchar(50) not null,
endereco varchar(50) not null,
num int,
bairro varchar(50) not null,
cep char(9) not null,
contato varchar(50) not null,
cnpj char(18) not null,
insc varchar(50),
id_cidade int,


foreign key(id_cidade) references tb_cidade(id)

);

CREATE TABLE tb_produto(
id int primary key not null auto_increment,
valor FLOAT (8,2),
taxa FLOAT (8,2),
descricao varchar(50) not null,
peso double,
controlado bool,
qtdmin int,
id_fornecedor int,
id_categoria int,

foreign key(id_fornecedor) references tb_fornecedor(id),
foreign key(id_categoria) references tb_categoria(id)

);



CREATE TABLE tb_loja(
id int primary key not null auto_increment,
nome varchar(50) not null,
endereco varchar(50) not null,
num int,
bairro varchar(50) not null,
tel char(14) not null,
insc varchar(50) not null,
cnpj char(18) not null,

id_cidade int,

foreign key(id_cidade) references tb_cidade(id)

);

CREATE TABLE tb_transportadora(
id int primary key not null auto_increment,
transportadora varchar(50) not null,
endereco varchar(50) not null,
num int,
bairro varchar(50) not null,
cep char(14) not null,
cnpj char(18) not null,
insc varchar(50) not null,
contato varchar(50) not null,
tel char(14) not null,


id_cidade int,

foreign key(id_cidade) references tb_cidade(id)

);

CREATE TABLE tb_entrada(
id int primary key not null auto_increment,
dataped date not null,
dataentr date not null,
total double,
frete double,
numnf int,
imposto double,
id_transportadora int,

FOREIGN KEY(id_transportadora) references tb_transportadora(id)

);

CREATE TABLE tb_itementrada(
id int primary key not null auto_increment,
lote varchar(50) not null,
qtde int not null,
valor double,
id_entrada int,
id_produto int,

FOREIGN KEY(id_entrada) references tb_entrada(id),
FOREIGN KEY(id_produto) references tb_produto(id)

);

CREATE TABLE tb_saida(
id int primary key not null auto_increment,
total double,
frete double,
imposto double,
id_loja int,
id_transportadora int,

FOREIGN KEY(id_transportadora) references tb_transportadora(id),
FOREIGN KEY(id_loja) references tb_loja(id)

);

CREATE TABLE tb_itemsaida(
id int primary key not null auto_increment,
lote varchar(50) not null,
qtde int not null,
valor double,
id_saida int,
id_produto int,

FOREIGN KEY(id_produto) references tb_produto(id),
FOREIGN KEY(id_saida) references tb_saida(id)

);


