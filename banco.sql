create table IF NOT EXISTS cursos (
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
totAulas int,
ano year DEFAULT '2016'
)DEFAULT CHARSET utf8mb4;

alter table cursos 
add column id int FIRST;
alter table cursos
add primary key(ID);
desc cursos;
