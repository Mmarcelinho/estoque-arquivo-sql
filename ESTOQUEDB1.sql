#INSERT TABELA CATEGORIA
INSERT INTO tb_categoria(categoria) VALUES ('Acessórios');
INSERT INTO tb_categoria(categoria) VALUES ('Beleza');
INSERT INTO tb_categoria(categoria) VALUES ('Informática');
INSERT INTO tb_categoria(categoria) VALUES ('Jardinagem');
INSERT INTO tb_categoria(categoria) VALUES ('Pet Shop');


#INSERT TABELA CIDADE
INSERT INTO tb_cidade(cidade, uf) VALUES ('Manaus', '13');
INSERT INTO tb_cidade(cidade, uf) VALUES ('Natal', '24');
INSERT INTO tb_cidade(cidade, uf) VALUES ('Goiânia', '52');
INSERT INTO tb_cidade(cidade, uf) VALUES ('Campo Grande', '50');
INSERT INTO tb_cidade(cidade, uf) VALUES ('Belém', '15');


#INSERT TABELA FORNECEDOR
INSERT INTO tb_fornecedor(fornecedor, endereco, bairro, cep, contato, cnpj, id_cidade) VALUES ('Elegância Acessórios', 'Av. Brasil', 'Comércio', '69050030', '92988556677', '11122233344455', 1);
INSERT INTO tb_fornecedor(fornecedor, endereco, bairro, cep, contato, cnpj, id_cidade) VALUES ('Beleza Pura', 'Rua das Flores', 'Petrópolis', '59020240', '84988556677', '55566677788899', 2);
INSERT INTO tb_fornecedor(fornecedor, endereco, bairro, cep, contato, cnpj, id_cidade) VALUES ('TechInfo', 'Av. Goiás', 'Setor Central', '74005310', '62988556677', '99988877766655', 3);
INSERT INTO tb_fornecedor(fornecedor, endereco, bairro, cep, contato, cnpj, id_cidade) VALUES ('Green Garden', 'Rua Ceará', 'Monte Castelo', '79010200', '67988556677', '44433322211100', 4);
INSERT INTO tb_fornecedor(fornecedor, endereco, bairro, cep, contato, cnpj, id_cidade) VALUES ('Pet Feliz', 'Av. Nazaré', 'Nazaré', '66035120', '91988556677', '22233344455566', 5);



#INSERT TABELA PRODUTO
INSERT INTO tb_produto(descricao, qtdmin, id_fornecedor, id_categoria) VALUES ('Óculos de Sol', '150', 1, 1);
INSERT INTO tb_produto(descricao, qtdmin, id_fornecedor, id_categoria) VALUES ('Kit de Maquiagem', '200', 2, 2);
INSERT INTO tb_produto(descricao, qtdmin, id_fornecedor, id_categoria) VALUES ('Notebook Gamer', '50', 3, 3);
INSERT INTO tb_produto(descricao, qtdmin, id_fornecedor, id_categoria) VALUES ('Conjunto de Ferramentas para Jardim', '100', 4, 4);
INSERT INTO tb_produto(descricao, qtdmin, id_fornecedor, id_categoria) VALUES ('Ração para Cães', '300', 5, 5);


#INSERT TABELA LOJA
INSERT INTO tb_loja(nome, endereco, num, bairro, tel, insc, cnpj, id_cidade) VALUES ('Acessórios Modernos', 'Av. Eduardo Ribeiro', 120, 'Centro', '(92) 9985-6677', 'AM345678901', '77.888.999/0001-66', 1);
INSERT INTO tb_loja(nome, endereco, num, bairro, tel, insc, cnpj, id_cidade) VALUES ('Beleza em Casa', 'Rua Potengi', 580, 'Petrópolis', '(84) 9985-6677', 'RN123456789', '66.777.888/0001-55', 2);
INSERT INTO tb_loja(nome, endereco, num, bairro, tel, insc, cnpj, id_cidade) VALUES ('Info Tech Loja', 'Av. Anhanguera', 1080, 'Setor Central', '(62) 9985-6677', 'GO987654321', '55.666.777/0001-44', 3);
INSERT INTO tb_loja(nome, endereco, num, bairro, tel, insc, cnpj, id_cidade) VALUES ('Jardim & Cia', 'Rua 14 de Julho', 450, 'Centro', '(67) 9985-6677', 'MS876543219', '44.555.666/0001-33', 4);
INSERT INTO tb_loja(nome, endereco, num, bairro, tel, insc, cnpj, id_cidade) VALUES ('Pet Shop Amigo Fiel', 'Av. Almirante Barroso', 220, 'Marco', '(91) 9985-6677', 'PA765432198', '33.444.555/0001-22', 5);
INSERT INTO tb_loja(nome, endereco, num, bairro, tel, insc, cnpj, id_cidade) VALUES ('Pet Shop Amigo Fiel', 'Av. Almirante Barroso', 220, 'Marco', '(91) 9985-6677', 'PA765432198', '33.444.555/0001-22', 5);


select * from tb_produto;

#UPDATE
UPDATE tb_produto set descricao = 'Óculos de Grau' where id=1;

#UPDATE VALOR
UPDATE tb_produto SET valor = '50.00' where id=1;
UPDATE tb_produto SET valor = '30.00' where id=2;
UPDATE tb_produto SET valor = '60.00' where id=3;
UPDATE tb_produto SET valor = '2500.00' where id=4;
UPDATE tb_produto SET valor = '1200.00' where id=5;

UPDATE tb_produto SET taxa = '10.00' where id=1;
UPDATE tb_produto SET taxa = '15.00' where id=2;
UPDATE tb_produto SET taxa = '20.00' where id=3;
UPDATE tb_produto SET taxa = '200.00' where id=4;
UPDATE tb_produto SET taxa = '120.00' where id=5;

#DELETE

DELETE FROM tb_produto WHERE descricao = 'Óculos de Grau';

#ALTER TABLE
ALTER TABLE tb_produtos RENAME tb_produto;

ALTER TABLE tb_produto add qtdAtual int;

#SELECT
SELECT descricao AS produtos FROM tb_produto;

SELECT concat('Produto: ',descricao) from tb_produto;

SELECT distinct endereco FROM tb_fornecedor;

SELECT valor+taxa from tb_produto;

SELECT * from tb_produto LIMIT 2;

SELECT FORMAT ((((1000+1000)*2)/valor),2)FROM tb_produto;

SELECT FORMAT ((((5+5)*2)/valor),2) AS formula FROM tb_produto;

SELECT valor FROM tb_produto;

SELECT fornecedor, endereco FROM tb_fornecedor WHERE fornecedor = 'Elegância Acessórios';

SELECT descricao,valor FROM tb_produto WHERE VALOR=1200.00;

SELECT descricao from tb_produto WHERE id=5;

SELECT descricao FROM tb_produto WHERE valor<1000;

SELECT descricao from tb_produto WHERE valor between 10 and 3000;

SELECT descricao,valor FROM tb_produto WHERE valor in(50,1200);

SELECT descricao FROM tb_produto WHERE descricao in ('Notebook Gamer','Ração para Cães');

SELECT descricao FROM tb_produto WHERE valor is null;

SELECT descricao FROM tb_produto WHERE descricao like 'N%';

SELECT descricao FROM tb_produto WHERE descricao like '%es';

SELECT descricao FROM tb_produto WHERE descricao like '_a%';

#OPERADORES LÓGICOS

SELECT descricao FROM tb_produto WHERE id=4 and valor>1000;

SELECT descricao,qtdmin,id FROM tb_produto;

SELECT descricao,valor FROM tb_produto WHERE valor<1000 OR valor=1200;  

SELECT descricao FROM tb_produto WHERE NOT(valor>2000 and id=3);

SELECT descricao FROM tb_produto order by descricao ASC;

SELECT descricao FROM tb_produto order by descricao DESC;

SELECT descricao FROM tb_produto WHERE valor >=1000 order by descricao;

SELECT AVG(valor) FROM tb_produto;

SELECT COUNT(*) FROM tb_produto;

SELECT COUNT(*) FROM tb_produto group by id_categoria HAVING AVG(valor)>=50;

select sum(valor) from tb_produto;

SELECT UPPER(descricao) FROM tb_produto;

SELECT LOWER(descricao) FROM tb_produto;

SELECT substr(descricao,2,length(descricao)) FROM tb_produto;

SELECT RPAD(descricao,length(descricao)+6,"$") FROM tb_produto;

SELECT LPAD(descricao,9,"$") FROM tb_produto;

SELECT MAX(valor) FROM tb_produto;

SELECT MIN(valor) FROM tb_produto;


#JOIN
#INNER JOIN
select tb_fornecedor.fornecedor, tb_cidade.cidade from tb_fornecedor inner join tb_cidade on tb_fornecedor.id_cidade = tb_cidade.id;
#LEFT JOIN
select tb_fornecedor.fornecedor, tb_cidade.cidade from  tb_fornecedor  left join tb_cidade on tb_fornecedor.id_cidade = tb_cidade.id;
#RIGHT JOIN
select tb_produto.descricao, tb_categoria.categoria from  tb_produto right join tb_categoria on tb_produto.id_categoria = tb_categoria.id;


#Union
# Uma operação UNION permite combinar dados provenientes de duas ou mais tabelas (ou da mesma tabela,
# com condições diferentes). Porém, em vez de combinar as colunas dessas tabelas, a UNION combina as linhas de dois ou mais conjuntos de resultados.
SELECT id_cidade FROM tb_loja
UNION
SELECT id_cidade FROM tb_fornecedor
ORDER BY id_cidade;

# O operador UNION ALL tem a mesma função do UNION, ou seja, ele combina os resultados de duas ou mais queries,
# a diferença é que ele mantém os valores duplicados de cada SELECT.
SELECT id_cidade FROM tb_loja
UNION ALL
SELECT id_cidade FROM tb_fornecedor
ORDER BY id_cidade;

# Dois JOINS, o RIGHT e o LEFT, nos campos que unem as tabelas
# com estes dois JOINS criados, vamos unir o resultado deles com o operador UNION,
# simulando assim um FULL OUTER JOIN
SELECT * FROM tb_fornecedor
       LEFT JOIN tb_cidade ON tb_fornecedor.id = tb_cidade.id
       UNION ALL
       SELECT * FROM tb_fornecedor
       RIGHT JOIN tb_cidade ON tb_fornecedor.id = tb_cidade.id
       WHERE tb_cidade.id IS NULL ;


#Criação de Views
# Uma View é um objeto que pertence a um banco de dados, definida baseada em declarações SELECT’s,
# retornando uma determinada visualização de dados de uma ou mais tabelas. 
Create view viewCidade
as select tb_fornecedor.fornecedor As Fornecedor, tb_cidade.cidade as Cidade
from tb_fornecedor
inner join tb_cidade
on  tb_fornecedor.id = tb_cidade.id;

select Fornecedor, cidade  from viewCidade
order by Fornecedor;



#PROCEDURE
# Stored procedure é uma subrotina que fica armazenada no banco de dados.
# uma PROCEDURE tem um nome, uma lista de parâmetros e declarações de comandos SQL.

CREATE PROCEDURE verValor(varProduto smallint)
SELECT CONCAT('O valor:',valor)
from tb_produto
where id=varProduto;
CALL verValor(2);


#TRIGGER
#Um Trigger é um procedimento armazenado no banco de dados que é chamado automaticamente
# sempre que ocorre um evento especial no banco de dados. 

alter table tb_produto add Preco_desconto decimal(5,2);
create trigger tr_desconto before insert 
on tb_produto
for each row 
set new.Preco_desconto = (new.valor * 0.20);
USE ESTOQUE;
insert into tb_produto(descricao,valor,taxa,id_fornecedor,id_categoria) values ('Monitor','900.00','30',3,3);

select *from tb_produto;
