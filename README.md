<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Métodos e Ciências dos Dados - Automação de RH</title>
</head>
<body>

<h1>📊 Métodos e Ciências dos Dados</h1>
<h2>Automação de Relatórios de RH com Python</h2>

<p>
Projeto desenvolvido como trabalho final da disciplina 
<strong>Métodos e Ciências dos Dados</strong> da 
<strong>Universidade Federal de Minas Gerais (UFMG)</strong>.
</p>

<hr>

<h2>📌 Sobre o Projeto</h2>

<p>
Este projeto implementa um sistema automatizado para:
</p>

<ul>
    <li>Extração de dados de banco relacional (MySQL/PostgreSQL)</li>
    <li>Processamento e análise de dados com Python</li>
    <li>Geração de relatórios gerenciais em Excel</li>
    <li>Envio automático de relatórios por e-mail</li>
</ul>

<p>
A solução foi desenvolvida com foco na otimização de processos de 
<strong>Recursos Humanos</strong>, reduzindo tarefas manuais e aumentando a confiabilidade das informações.
</p>

<hr>

<h2>🏗️ Estrutura do Projeto</h2>

<ul>
    <li><strong>Trabalho_Final_Métodos_e_Ciência_de_Dados.pdf</strong><br>
    Documento completo do projeto com fundamentação teórica, modelagem e resultados.</li>

    <li><strong>Script SQL de Criação do Banco</strong><br>
    Contém criação de tabelas, chaves primárias/estrangeiras e dados simulados.</li>

    <li><strong>Código Python</strong><br>
        <ul>
            <li>Conexão com banco de dados</li>
            <li>Consultas SQL dinâmicas</li>
            <li>Geração de relatórios com Pandas</li>
            <li>Exportação para Excel</li>
            <li>Envio automatizado via SMTP</li>
        </ul>
    </li>
</ul>

<hr>

<h2>🛠️ Tecnologias Utilizadas</h2>

<ul>
    <li>Python 3</li>
    <li>Pandas</li>
    <li>Psycopg2 / MySQL Connector</li>
    <li>OpenPyXL</li>
    <li>SMTP (smtplib)</li>
    <li>SQL (MySQL / PostgreSQL)</li>
</ul>

<hr>

<h2>🗃️ Estrutura do Banco de Dados</h2>

<p>
O banco de dados simula um sistema de gestão de RH contendo:
</p>

<ul>
    <li>Departamentos</li>
    <li>Cargos</li>
    <li>Contrato</li>
    <li>Histórico de Cargos</li>
    <li>Histórico de Situação Funcional</li>
    <li>Folha de Pagamento</li>
    <li>Férias</li>
</ul>

<p>
A modelagem utiliza integridade referencial, chaves compostas e controle de histórico funcional.
</p>

<hr>

<h2>📊 Relatórios Gerados</h2>

<ul>
    <li>📈 Taxa de Turnover Mensal</li>
    <li>🏢 Distribuição de Funcionários por Departamento</li>
    <li>👥 Perfil Demográfico (idade e gênero)</li>
    <li>💰 Informações de Folha de Pagamento</li>
</ul>

<p>
Os relatórios são exportados automaticamente em formato Excel, com cada indicador organizado em abas distintas.
</p>

<hr>

<h2>📧 Automação de E-mails</h2>

<ul>
    <li>Envio automático do relatório em anexo</li>
    <li>Protocolo SMTP com segurança TLS</li>
    <li>Processo totalmente automatizado</li>
</ul>

<hr>

<h2>▶️ Como Executar</h2>

<h3>1️⃣ Criar o Banco de Dados</h3>

<pre>
use myhr;
-- Execute o script SQL completo incluído no repositório
</pre>

<h3>2️⃣ Instalar Dependências</h3>

<pre>
pip install pandas psycopg2 openpyxl
</pre>

<h3>3️⃣ Configurar Conexão</h3>

<pre>
host=
database=
user=
password=
</pre>

<h3>4️⃣ Executar o Script</h3>

<pre>
python main.py
</pre>

<hr>

<h2>🎯 Resultados</h2>

<ul>
    <li>Redução significativa de tempo operacional</li>
    <li>Eliminação de erros manuais</li>
    <li>Entrega automática e pontual de relatórios</li>
    <li>Escalabilidade para novos indicadores</li>
</ul>

<hr>

<h2>🚀 Possíveis Melhorias Futuras</h2>

<ul>
    <li>Integração com APIs ou ERP</li>
    <li>Dashboard interativo (Power BI / Dash)</li>
    <li>Sistema de logs para monitoramento de envio</li>
    <li>Aplicação de Machine Learning para análise preditiva</li>
</ul>

<hr>

<h2>👨‍💻 Autor</h2>

<p>
<strong>Gabriel Henrique Silva Maia</strong><br>
Universidade Federal de Minas Gerais<br>
Belo Horizonte - MG
</p>

</body>
</html>
