use oficina;

-- 1. lista simples de clientes cadastrados
select nome, telefone, email
from cliente;

-- 2. veículos fabricados após 2018
select modelo, ano, placa
from veiculo
where ano > 2018;

-- 3. valor total de cada ordem de serviço (atributo derivado)
select os.id_ordem, sum(s.valor * oss.quantidade) as valor_total
from ordem_servico os
join ordem_servico_servico oss on os.id_ordem = oss.id_ordem
join servico s on oss.id_servico = s.id_servico
group by os.id_ordem;

-- 4. ordens de serviço concluídas, ordenadas pela data de conclusão
select id_ordem, data_abertura, data_conclusao
from ordem_servico
where data_conclusao is not null
order by data_conclusao asc;

-- 5. clientes que possuem mais de uma ordem de serviço (HAVING)
select c.nome, count(os.id_ordem) as total_ordens
from cliente c
join ordem_servico os on c.id_cliente = os.id_cliente
group by c.nome
having count(os.id_ordem) > 1;

-- 6. mecânico com mais ordens de serviço
select m.nome, count(os.id_ordem) as total_ordens
from mecanico m
join ordem_servico os on m.id_mecanico = os.id_mecanico
group by m.nome
order by total_ordens desc
limit 1;

-- 7. serviços mais solicitados
select s.descricao, count(oss.id_ordem) as vezes_solicitado
from servico s
join ordem_servico_servico oss on s.id_servico = oss.id_servico
group by s.descricao
order by vezes_solicitado desc;

-- 8. valor total gasto por cliente
select c.nome, sum(p.valor_pago) as total_gasto
from cliente c
join ordem_servico os on c.id_cliente = os.id_cliente
join pagamento p on os.id_ordem = p.id_ordem
group by c.nome
order by total_gasto desc;

-- 9. média de valor das ordens por mecânico
select m.nome, format(avg(p.valor_pago), 2) as media_valor
from mecanico m
join ordem_servico os on m.id_mecanico = os.id_mecanico
join pagamento p on os.id_ordem = p.id_ordem
group by m.nome;


-- 10. ordens de serviço em andamento (sem data de conclusão)
select os.id_ordem, c.nome as cliente, v.modelo as veiculo, m.nome as mecanico
from ordem_servico os
join cliente c on os.id_cliente = c.id_cliente
join veiculo v on os.id_veiculo = v.id_veiculo
join mecanico m on os.id_mecanico = m.id_mecanico
where os.data_conclusao is null;
