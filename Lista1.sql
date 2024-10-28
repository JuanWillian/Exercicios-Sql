Create database vendas;
use vendas;

create table produto(
codigo_produto integer,
descricao_produto varchar(30),
preco_produto float
)charset = utf8mb4;

create table nota_fiscal(
numero_nf integer,
data_nf date,
valor_nf float
)charset = utf8mb4;

create table itens(
produto_codigo_produto Integer,
nota_fiscal_numero_nf integer,
num_item integer,
qtd_item integer
)charset = utf8mb4;
alter table produto
modify column descricao_produto varchar(50);
desc produto;
alter table nota_fiscal
add ICMS float after numero_nf;
alter table produto
add peso float;
use vendas;
select * from produto;
select * from nota_fiscal;
select * from itens;
alter table itens
add constraint PK_itens primary key(num_item);
desc nota_fiscal;
alter table nota_fiscal
rename column valor_nf to ValorTotal_NF;
alter table nota_fiscal
drop column data_nf;
drop table itens;
rename table nota_fiscal to venda;
