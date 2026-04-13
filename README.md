# 🛠️ Projeto Banco de Dados - Oficina Mecânica

## 📖 Descrição
Este projeto foi desenvolvido como parte de um desafio de modelagem de banco de dados.  
O objetivo é replicar a modelagem lógica, criar o esquema relacional, inserir dados de teste e elaborar consultas SQL que respondam perguntas de negócio utilizando cláusulas fundamentais.

---

## 🔧 Mudanças Necessárias
- Clientes: cada cliente pode ter múltiplos veículos.  
- Mecânicos: cada mecânico possui uma especialidade.  
- Serviços: podem ser associados a várias ordens de serviço.  
- Pagamentos: cada ordem pode ter um pagamento com forma e valor.  
- Ordens de Serviço: possuem status (em andamento ou concluída).  

---

## 📂 Estrutura do Repositório
📦 oficina_database
┣ 📜 README.md → documentação principal
┣ 📜 esquema_relacional_oficina.sql → criação do banco e tabelas
┣ 📜 inserção_de_dados.sql → inserção de dados fictícios
┣ 📜 consultas.sql → consultas SQL
┗ 📜 EER_diagram.png → diagrama entidade-relacionamento

---

---

## 🗂️ Estrutura do Banco de Dados

### Principais Tabelas
- **cliente** → dados de clientes  
- **veiculo** → veículos cadastrados por cliente  
- **mecanico** → dados dos mecânicos e suas especialidades  
- **servico** → catálogo de serviços oferecidos  
- **ordem_servico** → ordens abertas e concluídas  
- **ordem_servico_servico** → associação entre ordens e serviços  
- **pagamento** → registros de pagamentos das ordens  

### Relacionamentos
- Cliente 1:N Veículo  
- Cliente 1:N Ordem de Serviço  
- Mecânico 1:N Ordem de Serviço  
- Ordem de Serviço N:M Serviço  
- Ordem de Serviço 1:1 Pagamento  

---

## 📑 Cláusulas Exigidas
- **SELECT** → consultas básicas  
- **WHERE** → filtros de dados  
- **ORDER BY** → ordenação de resultados  
- **HAVING** → filtros em grupos agregados  
- **JOIN** → junções entre tabelas  
- **Atributos derivados** → uso de funções como `SUM`, `AVG`, `ROUND`  

---

## 🔎 Perguntas 

1. Quais clientes estão cadastrados?  
2. Quais veículos foram fabricados após 2018?  
3. Qual o valor total de cada ordem de serviço?  
4. Quais ordens de serviço já foram concluídas?  
5. Quais clientes possuem mais de uma ordem de serviço?  
6. Qual mecânico realizou mais ordens de serviço?  
7. Quais serviços são os mais solicitados?  
8. Qual o valor total gasto por cliente?  
9. Qual a média de valor das ordens por mecânico?  
10. Quais ordens de serviço estão em andamento (sem data de conclusão)?  


