# Banco de Dados de Oficina

Este projeto foi desenvolvido para modelar e implementar um banco de dados de uma oficina mecânica.  
O sistema permite gerenciar **clientes, veículos, mecânicos, serviços, ordens de serviço e pagamentos**, garantindo integridade e consultas úteis para o negócio.

---

## 📂 Estrutura do Projeto

📦 oficina_database
┣ 📜 README.md
┣ 📜 esquema_relacional_oficina.sql   # criação das tabelas e relacionamentos
┣ 📜 inserção_de_dados.sql            # inserção de dados fictícios
┣ 📜 consultas.sql                    # consultas SQL de negócio
┗ 📜 EER_diagram.png                  # diagrama entidade-relacionamento


---

## 📑 Etapas do Projeto

1. **Modelagem Conceitual (EER_diagram.png)**  
   - Representação das entidades e relacionamentos.  
   - Entidades principais: Cliente, Veículo, Mecânico, Serviço, Ordem de Serviço, Pagamento.  

2. **Esquema Relacional (`esquema_relacional_oficina.sql`)**  
   - Criação das tabelas com chaves primárias e estrangeiras.  
   - Todas as tabelas e colunas em minúsculo, palavras reservadas em maiúsculo.  

3. **Inserção de Dados (`inserção_de_dados.sql`)**  
   - População inicial com clientes, veículos, mecânicos, serviços, ordens e pagamentos.  
   - Dados fictícios para simulação de cenários reais.  

4. **Consultas SQL (`consultas.sql`)**  
   - Perguntas de negócio respondidas com `SELECT`, `WHERE`, `JOIN`, `GROUP BY`, `HAVING`, `ORDER BY`.  



