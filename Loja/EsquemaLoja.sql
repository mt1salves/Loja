create schema loja;

use loja;

create table Venda (
	idVenda int not null primary key auto_increment,
	nomeVendedor varchar(20) not null,
	quantidade int not null,
	produto varchar(20) not null,
	cidade varchar(20) not null
);

insert into Venda (idVenda, nomeVendedor, quantidade, produto, cidade)
values (1,'Jorge',1400,'Mouse','São Paulo'),
	   (2,'Tatiana',1220,'Teclado','São Paulo'),
	   (3,'Ana',1700,'Teclado','Rio de Janeiro'),
	   (4,'Rita',2120,'Webcam','Recife'),
	   (5,'Marcos',980,'Mouse','São Paulo'),
	   (6,'Carla',1120,'Webcam','Recife'),
	   (7,'Roberto',3145,'Mouse','São Paulo');
       
select * from Venda;

select distinct v.produto AS 'Produtos vendidos'
from Venda v;

select sum(v.quantidade) AS 'Quantidade total de produtos vendidos'
from Venda v;

select v.produto, sum(v.quantidade)
from Venda v
group by produto;

select v.nomeVendedor, v.cidade, v.produto, sum(v.quantidade)
from Venda v
group by nomeVendedor;

select sum(v.quantidade)
from Venda v
where produto = "Mouse";

select cidade, produto, sum(v.quantidade)
from Venda v
group by cidade;

SELECT v.cidade, count(v.idVenda)
FROM Venda v
GROUP BY cidade;

SELECT v.nomeVendedor, sum(v.quantidade)
FROM Venda v
GROUP BY nomeVendedor;