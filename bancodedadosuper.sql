/*CRIAÇÃO DO BANCO DE DADOS*/

CREATE DATABASE supermercado_db;
USE supermercado_db;

/*Criação da tabela de clientes*/
CREATE TABLE tbl_clientes (
id_cliente INT auto_increment PRIMARY KEY, 
nome VARCHAR(100),
email VARCHAR(100),
telefone VARCHAR(20),
endereco VARCHAR(255),
data_cadastro date 
);

/*Criação da tabela de produtos*/
CREATE TABLE tbl_produtos (
id_produto INT AUTO_INCREMENT PRIMARY KEY,
nome_produto VARCHAR(100),
categoria VARCHAR(50),
preco DECIMAL(10,2),
estoque INT
);

/*Criação da tablela de colaboradores*/
CREATE TABLE tbl_colaboradores (
id_colaborador INT AUTO_INCREMENT PRIMARY KEY,
nome_colaborador VARCHAR(100),
cargo VARCHAR(50),
data_admissao DATE
);

/*Criação da tabela de vendas*/
CREATE TABLE tbl_vendas (
id_venda INT AUTO_INCREMENT PRIMARY KEY,
id_cliente INT,
id_colaborador INT,
data_venda DATETIME,
valor_total DECIMAL (10,2),
FOREIGN KEY (id_cliente) REFERENCES tbl_clientes(id_cliente),	
FOREIGN KEY (id_colaborador) REFERENCES tbl_colaboradores (id_colaborador)
);

/* Criação da tabela de itens vendidos*/
CREATE TABLE tbl_itens_venda (
id_item_venda INT AUTO_INCREMENT PRIMARY KEY,
id_venda INT,
id_produto INT,
quantidade INT,
preco_unitario DECIMAL(10,2),
FOREIGN KEY (id_venda) REFERENCES tbl_vendas(id_venda),
FOREIGN KEY (id_produto) REFERENCES tbl_produtos(id_produto)
);

/*Criação da tabela de preferências de compras.
*/
CREATE TABLE tbl_preferencias (
id_preferencia INT AUTO_INCREMENT KEY,
id_client INT, 
categora_preferida VARCHAR (50),
FOREIGN KEY (id_cliente) REFERENCES tbl_clientes (id_cliente)
);








