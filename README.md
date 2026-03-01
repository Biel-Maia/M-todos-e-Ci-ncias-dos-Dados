<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Métodos e Ciências dos Dados - Automação de RH</title>

<style>
    body {
        font-family: "Segoe UI", Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f6f9;
        color: #2c3e50;
        line-height: 1.6;
    }

    .container {
        max-width: 1000px;
        margin: 40px auto;
        padding: 40px;
        background: #ffffff;
        border-radius: 10px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.08);
    }

    h1 {
        font-size: 32px;
        margin-bottom: 5px;
        color: #1a1a1a;
    }

    h2 {
        font-size: 22px;
        margin-top: 40px;
        border-left: 5px solid #2c3e50;
        padding-left: 10px;
    }

    h3 {
        font-size: 18px;
        margin-top: 20px;
        color: #34495e;
    }

    .subtitle {
        font-size: 18px;
        color: #7f8c8d;
        margin-bottom: 20px;
    }

    hr {
        margin: 30px 0;
        border: none;
        height: 1px;
        background: #e0e0e0;
    }

    ul {
        margin-left: 20px;
    }

    li {
        margin-bottom: 8px;
    }

    .highlight {
        background: #ecf0f1;
        padding: 12px;
        border-radius: 6px;
        margin: 10px 0;
        font-family: Consolas, monospace;
        font-size: 14px;
    }

    .tech-stack span {
        display: inline-block;
        background: #2c3e50;
        color: #fff;
        padding: 6px 12px;
        margin: 5px 5px 5px 0;
        border-radius: 20px;
        font-size: 13px;
    }

    .footer {
        margin-top: 50px;
        text-align: center;
        font-size: 14px;
        color: #7f8c8d;
    }
</style>
</head>

<body>

<div class="container">

<h1>📊 Métodos e Ciências dos Dados</h1>
<div class="subtitle">Automação de Relatórios de RH com Python</div>

<p>
Projeto desenvolvido como trabalho final da disciplina 
<strong>Métodos e Ciências dos Dados</strong> – 
<strong>Universidade Federal de Minas Gerais (UFMG)</strong>.
</p>

<hr>

<h2>📌 Visão Geral</h2>

<p>
Sistema automatizado para extração, processamento e envio de relatórios gerenciais de Recursos Humanos.
A solução integra banco de dados relacional, análise de dados com Python e envio automatizado de relatórios em Excel.
</p>

<ul>
    <li>Extração de dados via SQL</li>
    <li>Processamento com Pandas</li>
    <li>Geração de relatórios em Excel</li>
    <li>Envio automático via SMTP</li>
</ul>

<hr>

<h2>🏗 Arquitetura da Solução</h2>

<ul>
    <li><strong>Banco de Dados Relacional</strong> (MySQL/PostgreSQL)</li>
    <li><strong>Camada de Processamento</strong> em Python</li>
    <li><strong>Geração de Relatórios</strong> com OpenPyXL</li>
    <li><strong>Envio Automatizado</strong> com SMTP + TLS</li>
</ul>

<hr>

<h2>🗄 Estrutura do Banco de Dados</h2>

<p>Modelo relacional desenvolvido para simulação de um sistema completo de RH:</p>

<ul>
    <li>Departamentos</li>
    <li>Cargos</li>
    <li>Contrato (chave composta)</li>
    <li>Histórico de Cargos</li>
    <li>Histórico de Situação Funcional</li>
    <li>Folha de Pagamento</li>
    <li>Férias</li>
</ul>

<p>
A modelagem utiliza integridade referencial, controle de histórico funcional e estrutura preparada para análise gerencial.
</p>

<hr>

<h2>📊 Indicadores Gerados</h2>

<ul>
    <li>Taxa de Turnover Mensal</li>
    <li>Distribuição de Funcionários por Departamento</li>
    <li>Perfil Demográfico (idade e gênero)</li>
    <li>Indicadores de Folha de Pagamento</li>
</ul>

<hr>

<h2>🛠 Tecnologias Utilizadas</h2>

<div class="tech-stack">
    <span>Python 3</span>
    <span>Pandas</span>
    <span>SQL</span>
    <span>MySQL</span>
    <span>PostgreSQL</span>
    <span>OpenPyXL</span>
    <span>SMTP</span>
    <span>Psycopg2</span>
</div>

<hr>

<h2>▶ Execução do Projeto</h2>

<h3>1. Criar Banco de Dados</h3>
<div class="highlight">
use myhr;
-- Executar script SQL completo incluído no repositório
</div>

<h3>2. Instalar Dependências</h3>
<div class="highlight">
pip install pandas psycopg2 openpyxl
</div>

<h3>3. Configurar Credenciais no Script Python</h3>
<div class="highlight">
host=
database=
user=
password=
</div>

<h3>4. Executar</h3>
<div class="highlight">
python main.py
</div>

<hr>

<h2>🎯 Resultados Obtidos</h2>

<ul>
    <li>Redução significativa de tempo operacional</li>
    <li>Eliminação de erros manuais</li>
    <li>Envio automático e seguro de relatórios</li>
    <li>Solução escalável para novos indicadores</li>
</ul>

<hr>

<h2>🚀 Melhorias Futuras</h2>

<ul>
    <li>Integração com ERP via API</li>
    <li>Dashboard interativo (Power BI / Dash)</li>
    <li>Logs e monitoramento de envio</li>
    <li>Modelos preditivos com Machine Learning</li>
</ul>

<hr>

<div class="footer">
<strong>Gabriel Henrique Silva Maia</strong><br>
Universidade Federal de Minas Gerais – UFMG<br>
Belo Horizonte, MG
</div>

</div>

</body>
</html>
