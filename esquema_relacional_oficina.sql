-- criação do banco de dados
create database oficina;
use oficina;

-- tabela de clientes
create table cliente (
    id_cliente int primary key auto_increment,
    nome varchar(100) not null,
    telefone varchar(20),
    email varchar(100)
);

-- tabela de veículos
create table veiculo (
    id_veiculo int primary key auto_increment,
    placa varchar(10) unique not null,
    modelo varchar(50),
    ano int,
    id_cliente int,
    foreign key (id_cliente) references cliente(id_cliente)
);

-- tabela de mecânicos
create table mecanico (
    id_mecanico int primary key auto_increment,
    nome varchar(100) not null,
    especialidade varchar(50)
);

-- tabela de serviços
create table servico (
    id_servico int primary key auto_increment,
    descricao varchar(100) not null,
    valor decimal(10,2) not null
);

-- tabela de ordens de serviço
create table ordem_servico (
    id_ordem int primary key auto_increment,
    data_abertura date not null,
    data_conclusao date,
    id_cliente int,
    id_veiculo int,
    id_mecanico int,
    foreign key (id_cliente) references cliente(id_cliente),
    foreign key (id_veiculo) references veiculo(id_veiculo),
    foreign key (id_mecanico) references mecanico(id_mecanico)
);

-- tabela de associação entre ordens e serviços
create table ordem_servico_servico (
    id_ordem int,
    id_servico int,
    quantidade int not null,
    primary key (id_ordem, id_servico),
    foreign key (id_ordem) references ordem_servico(id_ordem),
    foreign key (id_servico) references servico(id_servico)
);

-- tabela de pagamentos
create table pagamento (
    id_pagamento int primary key auto_increment,
    id_ordem int,
    forma_pagamento varchar(50),
    valor_pago decimal(10,2),
    data_pagamento date,
    foreign key (id_ordem) references ordem_servico(id_ordem)
);
