<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Automação de Relatórios de RH | Gabriel Maia</title>

<style>
    body {
        margin: 0;
        padding: 0;
        font-family: 'Segoe UI', Arial, sans-serif;
        background: #0f1117;
        color: #e6edf3;
        line-height: 1.7;
    }

    .container {
        max-width: 1100px;
        margin: 60px auto;
        padding: 50px;
        background: #161b22;
        border-radius: 16px;
        box-shadow: 0 0 40px rgba(0, 0, 0, 0.6);
    }

    h1 {
        font-size: 36px;
        margin-bottom: 10px;
        background: linear-gradient(90deg, #00c6ff, #0072ff);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
    }

    h2 {
        margin-top: 50px;
        font-size: 22px;
        border-left: 4px solid #0072ff;
        padding-left: 12px;
        color: #ffffff;
    }

    p {
        color: #c9d1d9;
    }

    ul {
        margin-left: 20px;
    }

    li {
        margin-bottom: 8px;
        color: #c9d1d9;
    }

    .subtitle {
        font-size: 18px;
        color: #8b949e;
        margin-bottom: 25px;
    }

    .tag-container span {
        display: inline-block;
        background: #21262d;
        color: #58a6ff;
        border: 1px solid #30363d;
        padding: 6px 14px;
        margin: 6px 6px 6px 0;
        border-radius: 20px;
        font-size: 13px;
        transition: 0.3s;
    }

    .tag-container span:hover {
        background: #0072ff;
        color: #fff;
        transform: scale(1.05);
    }

    .code-box {
        background: #0d1117;
        border: 1px solid #30363d;
        padding: 15px;
        border-radius: 10px;
        font-family: Consolas, monospace;
        font-size: 14px;
        color: #58a6ff;
        margin: 10px 0 20px 0;
    }

    .card {
        background: #1c2128;
        padding: 20px;
        border-radius: 12px;
        margin: 15px 0;
        border: 1px solid #30363d;
        transition: 0.3s;
    }

    .card:hover {
        border-color: #0072ff;
        box-shadow: 0 0 15px rgba(0,114,255,0.3);
    }

    .footer {
        margin-top: 60px;
        text-align: center;
        font-size: 14px;
        color: #8b949e;
    }

    a {
        color: #58a6ff;
        text-decoration: none;
    }

    a:hover {
        text-decoration: underline;
    }

</style>
</head>

<body>

<div class="container">

<h1>Automação de Relatórios de RH</h1>
<div class="subtitle">Projeto de Engenharia de Dados e Automação • Python • SQL</div>

<p>
Projeto desenvolvido como trabalho final da disciplina <strong>Métodos e Ciências dos Dados</strong>,
na <strong>Universidade Federal de Minas Gerais (UFMG)</strong>.
</p>

<h2>🚀 Visão Geral</h2>

<div class="card">
Sistema automatizado para extração, processamento e envio de relatórios estratégicos de Recursos Humanos.
Integra banco de dados relacional, análise com Python e envio automatizado de relatórios em Excel.
</div>

<ul>
    <li>Extração de dados com SQL</li>
    <li>Transformação e análise com Pandas</li>
    <li>Geração de relatórios estruturados em Excel</li>
    <li>Envio automático via SMTP com TLS</li>
</ul>

<h2>🏗 Arquitetura</h2>

<div class="card">
Banco de Dados Relacional → Processamento Python → Geração Excel → Envio Automatizado
</div>

<ul>
    <li>Modelagem relacional normalizada</li>
    <li>Histórico funcional com controle temporal</li>
    <li>Consultas analíticas otimizadas</li>
</ul>

<h2>📊 Indicadores Gerenciais</h2>

<ul>
    <li>Taxa de Turnover Mensal</li>
    <li>Distribuição de Funcionários por Departamento</li>
    <li>Perfil Demográfico (idade e gênero)</li>
    <li>Análise de Folha de Pagamento</li>
</ul>

<h2>🛠 Stack Tecnológica</h2>

<div class="tag-container">
    <span>Python 3</span>
    <span>Pandas</span>
    <span>SQL</span>
    <span>MySQL</span>
    <span>PostgreSQL</span>
    <span>OpenPyXL</span>
    <span>SMTP</span>
    <span>Psycopg2</span>
</div>

<h2>▶ Execução</h2>

<p><strong>1. Criar Banco:</strong></p>
<div class="code-box">
use myhr;
-- Executar script SQL incluído
</div>

<p><strong>2. Instalar Dependências:</strong></p>
<div class="code-box">
pip install pandas psycopg2 openpyxl
</div>

<p><strong>3. Executar:</strong></p>
<div class="code-box">
python main.py
</div>

<h2>🎯 Resultados</h2>

<ul>
    <li>Redução de tempo operacional</li>
    <li>Eliminação de erros manuais</li>
    <li>Automação completa de relatórios</li>
    <li>Solução escalável e reutilizável</li>
</ul>

<h2>🔮 Evoluções Futuras</h2>

<ul>
    <li>Dashboard interativo (Dash / Power BI)</li>
    <li>Integração com APIs corporativas</li>
    <li>Modelos preditivos de turnover</li>
</ul>

<div class="footer">
Gabriel Henrique Silva Maia <br>
Engenharia de Sistemas • UFMG <br>
Belo Horizonte – MG
</div>

</div>

</body>
</html>
