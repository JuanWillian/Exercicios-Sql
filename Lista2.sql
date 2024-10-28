create database LongaVida;
use LongaVida;
/*tabela de planos que você pode ter*/
create table plano(
numero char(2) not null primary key,
descricao char(30),
valor decimal(10,2)
)charset = utf8mb4;
/*EFETUANDO REGISTROS*/
insert into plano values
("B1", "Básico 1", "200"),
("B2","Básico 2", "150"),
("B3", "Básico 3", "100"),
("E1", "Executivo 1", "350"),
("E2","Executivo 2","300"),	
("E3","Executivo 3","250"), 
("M1","Master 1","500"), 
("M2","Master 2","450"),  
("M3","Master 3","400");  
/*tabela de associados do plano*/
create table associados(
plano char(2) not null,
nome char(40) not null primary key,
endereco char(35),
cidade char(20),
estado char(2),
cep char(9)
)charset = utf8mb4;
INSERT INTO associados(plano, nome, endereco, cidade, estado, cep)
VALUE ('B1', 'JOSE ANTONIO DA SILVA', 'R. FELIPE DO AMARAL, 3450', 'COTIA', 'SP', '06700-000'),
 ('B1', 'MARIA DA SILVA SOBRINHO', 'R. FELIPE DE JESUS, 1245', 'DIADEMA', 'SP', '09960-170'),
 ('B1', 'PEDRO JOSE DE OLIVEIRA', 'R. AGRIPINO DIAS, 155', 'COTIA', 'SP', '06700-011'),
 ('B2', 'ANTONIA DE FERNANDES', 'R. PE EZEQUIEL, 567', 'DIADEMA', 'SP', '09960-175'),
 ('B2', 'ANTONIO DO PRADO', 'R. INDIO TABAJARA, 55', 'GUARULHOS', 'SP', '07132-999'),
 ('B3', 'WILSON SENA', 'R. ARAPIRACA, 1234', 'OSASCO', 'SP', '06293-001'),
 ('B3', 'SILVIA DE ABREU', 'R. DR JOAO DA SILVA, 5', 'SANTO ANDRE', 'SP', '09172-112'),
 ('E1', 'ODETE DA CONCEICAO', 'R. VOLUNTARIOS DA PATRIA, 10', 'SAO PAULO', 'SP', '02010-550'),
 ('E2', 'JOAO CARLOS MACEDO', 'R. VISTA ALEGRE, 500', 'SAO PAULO', 'SP', '04343-990'),
 ('E3', 'CONCEICAO DA SILVA', 'AV. VITORINO DO AMPARO, 11', 'MAUA', 'SP', '09312-998'),
 ('E3', 'PAULO BRUNO AMARAL', 'R. ARGENZIO BRILHANTE, 88', 'BARUERI', 'SP', '06460-999'),
 ('E3', 'WALDENICE DE OLIVEIRA', 'R. OURO VELHO, 12', 'BARUERI', 'SP', '06460-998'),
 ('E3', 'MARCOS DO AMARAL', 'R. DO OUVIDOR, 67', 'GUARULHOS', 'SP', '07031-555'),
 ('E3', 'MURILO DE SANTANA', 'R. PRATA DA CASA', 'BARUERI', 'SP', '06455-111'),
('M1', 'LUIZA ONOFRE FREITAS', 'R. VICENTE DE ABREU, 55', 'SANTO ANDRE', 'SP', '09060-667'),
('M2', 'MELISSA DE ALMEIDA', 'R. FERNANDO ANTONIO, 2345', 'SAO PAULO', 'SP', '04842-987'),
('M2', 'JOAO INACIO DA CONCEICAO', 'R. PENELOPE CHARMOSA, 34', 'SUZANO', 'SP', '08670-888'),
('B3', 'AUGUSTA DE ABREU', 'AV. RIO DA SERRA, 909', 'SANTO ANDRE', 'SP', '09061-333'),
('B3', 'ILDA DE MELO DA CUNHA', 'AV. POR DO SOL, 546', 'SANTO ANDRE', 'SP', '09199-444'),
('B3', 'MARCOS DA CUNHA', 'AV. PEDROSO DE MORAES, 546', 'SAO PAULO', 'SP', '04040-444');

/*Questão 1: 
	Para associar as tabelas deve se utilizar o campo plano e o campo numero do plano
 */
 /*QUESTÃO 2:*/
 select * from plano inner join associados
 on associados.plano = plano.numero;
 /*QUESTÃO 3:*/
 select * from associados 
 where plano = "B1";
 /*QUESTÃO 4:*/
SELECT associados.nome, associados.plano, CONCAT('R$ ', FORMAT(plano.valor, 2)) AS valor FROM associados
LEFT JOIN plano 
ON associados.plano = plano.numero;
/*QUESTÃO 5:*/
select * from associados where cidade = "COTIA" or cidade = "DIADEMA";
/*QUESTÃO 6*/
select * from associados where cidade = "BARUERI" and plano = "M1";
/*QUESTÃO 7*/
select * from associados where estado = "SP";
/*QUESTÃO 8*/

/*QUESTÃO 9*/

update plano
set valor = "220"
where numero = "B1";

update plano
set valor = "145"
where numero = "B2";

update plano
set valor = "110"
where numero = "B3";

update plano
set valor = " 367.50"
where numero = "E1";
update plano
set valor = "315"
where numero = "E2";
update plano
set valor = "262.50"
where numero = "E3";
update plano
set valor = "515"
where numero = "M1";
update plano
set valor = "463.50"
where numero = "M2";
update plano
set valor = "413.30"
where numero = "M3";
/*QUESTÃO 10*/
update associados
set plano = "E3"
where nome = "PEDRO JOSE DE OLIVEIRA";