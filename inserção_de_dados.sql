use oficina;
-- inserção de clientes
insert into cliente (nome, telefone, email) values
('Paulo Mendes', '85988880001', 'paulo.mendes@email.com'),
('Juliana Rocha', '85988880002', 'juliana.rocha@email.com'),
('Ricardo Lima', '85988880003', 'ricardo.lima@email.com'),
('Aline Souza', '85988880004', 'aline.souza@email.com');

-- inserção de veículos
insert into veiculo (placa, modelo, ano, id_cliente) values
('hjk1234', 'Chevrolet Onix', 2019, 1),
('qwe5678', 'Volkswagen Gol', 2015, 2),
('rty9012', 'Ford Ka', 2018, 3),
('uio3456', 'Hyundai HB20', 2021, 4);

-- inserção de mecânicos
insert into mecanico (nome, especialidade) values
('Marcos Alves', 'Freios'),
('Carla Pereira', 'Eletricista'),
('Roberto Dias', 'Motor');

-- inserção de serviços
insert into servico (descricao, valor) values
('Troca de Pastilhas de Freio', 300.00),
('Diagnóstico Elétrico', 250.00),
('Troca de Correia Dentada', 600.00),
('Balanceamento', 180.00);

-- inserção de ordens de serviço
insert into ordem_servico (data_abertura, data_conclusao, id_cliente, id_veiculo, id_mecanico) values
('2026-03-10', '2026-03-12', 1, 1, 1),
('2026-03-15', null, 2, 2, 2),
('2026-03-20', '2026-03-21', 3, 3, 3),
('2026-03-25', null, 4, 4, 1);

-- associação de serviços às ordens
insert into ordem_servico_servico (id_ordem, id_servico, quantidade) values
(1, 1, 1), -- ordem 1: Troca de Pastilhas de Freio
(1, 4, 1), -- ordem 1: Balanceamento
(2, 2, 1), -- ordem 2: Diagnóstico Elétrico
(3, 3, 1), -- ordem 3: Troca de Correia Dentada
(4, 1, 1), -- ordem 4: Troca de Pastilhas de Freio
(4, 2, 1); -- ordem 4: Diagnóstico Elétrico

-- inserção de pagamentos
insert into pagamento (id_ordem, forma_pagamento, valor_pago, data_pagamento) values
(1, 'Cartão de Débito', 480.00, '2026-03-12'),
(2, 'Pix', 250.00, '2026-03-16'),
(3, 'Cartão de Crédito', 600.00, '2026-03-21'),
(4, 'Dinheiro', 550.00, '2026-03-26');
