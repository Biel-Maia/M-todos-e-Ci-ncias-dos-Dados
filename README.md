# 📊 Métodos e Ciências dos Dados  
## Automação de Relatórios de RH com Python

Projeto desenvolvido como trabalho final da disciplina **Métodos e Ciências dos Dados** da **Universidade Federal de Minas Gerais (UFMG)**.

---

## 📌 Sobre o Projeto

Este projeto implementa um sistema automatizado para:

- Extração de dados de um banco relacional (MySQL/PostgreSQL)
- Processamento e análise de dados com Python
- Geração de relatórios gerenciais em Excel
- Envio automático de relatórios por e-mail

A solução foi desenvolvida com foco na otimização de processos de **Recursos Humanos**, reduzindo tarefas manuais e aumentando a confiabilidade das informações.

---

## 🏗️ Estrutura do Projeto

O repositório contém:

### 📄 Documentação
- `Trabalho_Final_Métodos_e_Ciência_de_Dados.pdf`  
  Documento completo do projeto, incluindo fundamentação teórica, modelagem do banco e resultados.

### 🗄️ Banco de Dados
- `database.sql`  
  Script contendo:
  - Criação das tabelas
  - Definição de chaves primárias e estrangeiras
  - Inserção de dados simulados

### 🐍 Código Python
- Conexão com banco de dados
- Consultas SQL dinâmicas
- Geração de relatórios com Pandas
- Exportação para Excel
- Envio automatizado via SMTP

---

## 🛠️ Tecnologias Utilizadas

- Python 3
- Pandas
- Psycopg2 / MySQL Connector
- OpenPyXL
- SMTPLib
- SQL (MySQL / PostgreSQL)
- Neon Console (PostgreSQL online)

---

## 🗃️ Estrutura do Banco de Dados

O banco de dados foi modelado para simular um sistema de gestão de RH, contendo as seguintes tabelas:

- `Departamentos`
- `Cargos`
- `Contrato`
- `Historico_Cargos`
- `Historico_Situacao_Funcional`
- `Folha_Pagamento`
- `Ferias`

### Modelagem

- Chaves primárias compostas
- Relacionamentos com integridade referencial
- Controle de histórico funcional
- Estrutura preparada para relatórios analíticos

---

## 📊 Relatórios Gerados

O sistema gera automaticamente relatórios como:

- 📈 Taxa de Turnover Mensal  
- 🏢 Distribuição de Funcionários por Departamento  
- 👥 Perfil Demográfico (idade e gênero)  
- 💰 Informações de Folha de Pagamento  

Cada relatório é exportado para uma aba específica dentro de um arquivo Excel.

---

## 📧 Automação de E-mails

Após a geração do relatório:

- O arquivo Excel é anexado automaticamente
- O envio é realizado via protocolo SMTP
- Comunicação segura com TLS
- Processo totalmente automatizado

---

## ▶️ Como Executar o Projeto

### 1️⃣ Criar o Banco de Dados

Execute o script SQL incluído no repositório:

```sql
USE myhr;
-- Execute o script completo de criação das tabelas
```

### 2️⃣ Instalar Dependências

```bash
pip install pandas psycopg2 openpyxl
```

### 3️⃣ Configurar Conexão com Banco

No arquivo Python, configure:

```python
host = "seu_host"
database = "myhr"
user = "seu_usuario"
password = "sua_senha"
```

### 4️⃣ Executar o Script

```bash
python main.py
```

---

## 🎯 Resultados

A solução proporciona:

- ✅ Redução significativa de tempo operacional  
- ✅ Eliminação de erros manuais  
- ✅ Entrega automática e pontual de relatórios  
- ✅ Escalabilidade para novos indicadores  

---

## 🚀 Possíveis Melhorias Futuras

- Integração com APIs ou sistemas ERP
- Dashboard interativo (Power BI ou Dash)
- Logs detalhados de envio de e-mail
- Aplicação de Machine Learning para análise preditiva

---

## 👨‍💻 Autor

**Gabriel Henrique Silva Maia**  
Universidade Federal de Minas Gerais  
Belo Horizonte - MG  
