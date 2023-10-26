insert into users VALUES
(null,'everton cristian c p da silva','evertoncristian03@hotmail.com'),
(null,'ethelin helena c p da silva','ethelinhelena@gmail.com'),
(null,'evelin c p da silva','evelincpsilva@gmail.com'),
(null,'andreia cristina de moraes','crysmoraes@gmail.com');

insert into tipo_telefone values(null,'celular'), (null,'residencial'), (null,'trabalho');

insert into telefone values(null,1,24,974046057,4), (null,1,24,988291621,4), (null,1,24,20190360,5);

select * from users;

use estudos;

create table tipo_telefone(id int(11) auto_increment primary key, tipo varchar(15) not null)
engine=InnoDB default charset=utf8;

create table telefone(
id int(11) auto_increment primary key, 
numero_telefone varchar(9)not null, 
id_tipo int(11) not null, 
foreign key(id_tipo) references tipo_telefone(id))engine=InnoDB default charset=utf8;

desc telefone;
desc users;

SET FOREIGN_KEY_CHECKS=0;
alter table users add column telefone int(11) not null;
alter table telefone add column ddd int(11) not null after id;
alter table users ADD constraint telefone FOREIGN KEY (telefone) REFERENCES telefone(id);
