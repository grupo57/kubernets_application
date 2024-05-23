create database IF NOT EXISTS mydb
use mydb
create table clientes (id bigint not null auto_increment, codigo varchar(255), cpf varchar(255), data_criacao datetime(6) not null, nome varchar(255), ultima_modificacao datetime(6) not null, primary key (id)) engine=InnoDB
create table combo_produtos (comboid bigint not null, produtoid bigint not null, primary key (comboid, produtoid)) engine=InnoDB
create table combos (id bigint not null auto_increment, data_criacao datetime(6) not null, nome varchar(255), ultima_modificacao datetime(6) not null, cliente_id bigint, primary key (id)) engine=InnoDB
create table pedido_produtos (pedidoid bigint not null, produtoid bigint not null) engine=InnoDB
create table pedidos (id bigint not null auto_increment, codigo varchar(255), data_criacao datetime(6) not null, nome_cliente varchar(255), status enum ('INICIADO','PAGO','PREPARO','PRONTO','FINALIZADO'), ultima_modificacao datetime(6) not null, valor decimal(10,2), primary key (id)) engine=InnoDB
create table produtos (id bigint not null auto_increment, codigo varchar(255), data_criacao datetime(6) not null, data_exclusao datetime(6), nome varchar(255), tipo_produto enum ('LANCHE','ACOMPANHAMENTO','BEBIDA','SOBREMESA'), ultima_modificacao datetime(6) not null, valor decimal(10,2), primary key (id)) engine=InnoDB
alter table clientes drop index UK_7wflw78ibh162cmq12ii6ffly
alter table clientes add constraint UK_7wflw78ibh162cmq12ii6ffly unique (cpf)
alter table produtos drop index UK_pk2k37y05kgqceufn556j55w3
alter table produtos add constraint UK_pk2k37y05kgqceufn556j55w3 unique (codigo)
alter table produtos drop index UK_68les18ejq8cjyxw9snrbtd7t
alter table produtos add constraint UK_68les18ejq8cjyxw9snrbtd7t unique (nome)
alter table combo_produtos add constraint FKd73mjma0bpqofc5xl813kv6sj foreign key (produtoid) references produtos (id)
alter table combo_produtos add constraint FKh1c032u7k7uo92vk4f4ct2eqv foreign key (comboid) references combos (id)
alter table combos add constraint FK4apeeplru304fy0mq364qx4r8 foreign key (cliente_id) references clientes (id)
alter table pedido_produtos add constraint FKmxbuag3gvejqw28rs0mq5uxub foreign key (produtoid) references produtos (id)
alter table pedido_produtos add constraint FK59k0dlxipto1kdpismergyxq8 foreign key (pedidoid) references pedidos (id)