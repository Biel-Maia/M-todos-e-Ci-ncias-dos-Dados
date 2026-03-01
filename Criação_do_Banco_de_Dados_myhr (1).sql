use myhr;


-- Criando a tabela Departamentos primeiro
CREATE TABLE Departamentos (
    id_departamento INT PRIMARY KEY AUTO_INCREMENT,
    nome_departamento VARCHAR(100) NOT NULL,
    id_gerente INT,
    user_modificacao VARCHAR(50),
    dt_ult_modificacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Criando a tabela de Cargos
CREATE TABLE Cargos (
    id_cargo INT PRIMARY KEY AUTO_INCREMENT,
    nome_cargo VARCHAR(100) NOT NULL,
    salario_base DECIMAL(10,2),
    user_modificacao VARCHAR(50),
    dt_ult_modificacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Criando a tabela de Contrato
CREATE TABLE Contrato (
    id_contrato INT NOT NULL,
    ano_mes_referencia DATE NOT NULL,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) NOT NULL,  -- CPF sem formatação
    sexo CHAR(1) NOT NULL,
    data_nascimento DATE NOT NULL,
    endereco TEXT,
    telefone VARCHAR(15),
    email VARCHAR(100),
    data_admissao DATE NOT NULL,
    id_cargo INT,
    id_departamento INT,
    situacao_funcional VARCHAR(50),
    user_modificacao VARCHAR(50),
    dt_ult_modificacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id_contrato, ano_mes_referencia),
    FOREIGN KEY (id_cargo) REFERENCES Cargos(id_cargo),
    FOREIGN KEY (id_departamento) REFERENCES Departamentos(id_departamento)
);



-- Criando a tabela de Histórico de Cargos
CREATE TABLE Historico_Cargos (
    id_historico INT PRIMARY KEY AUTO_INCREMENT,
    id_contrato INT NOT NULL,
    ano_mes_referencia DATE NOT NULL,
    id_cargo_anterior INT,
    id_cargo_novo INT NOT NULL,
    data_alteracao DATE NOT NULL,
    motivo TEXT,
    user_modificacao VARCHAR(50),
    dt_ult_modificacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_contrato, ano_mes_referencia) REFERENCES Contrato(id_contrato, ano_mes_referencia) ON DELETE CASCADE,
    FOREIGN KEY (id_cargo_anterior) REFERENCES Cargos(id_cargo),
    FOREIGN KEY (id_cargo_novo) REFERENCES Cargos(id_cargo)
);

-- Criando a tabela de Histórico de Situação Funcional
CREATE TABLE Historico_Situacao_Funcional (
    id_historico INT PRIMARY KEY AUTO_INCREMENT,
    id_contrato INT NOT NULL,
    ano_mes_referencia DATE NOT NULL,
    situacao_anterior VARCHAR(50),
    situacao_nova VARCHAR(50) NOT NULL,
    data_alteracao DATE NOT NULL,
    motivo TEXT,
    user_modificacao VARCHAR(50),
    dt_ult_modificacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_contrato, ano_mes_referencia) REFERENCES Contrato(id_contrato, ano_mes_referencia) ON DELETE CASCADE
);

-- Criando a tabela de Folha de Pagamento
CREATE TABLE Folha_Pagamento (
    id_folha INT PRIMARY KEY AUTO_INCREMENT,
    id_contrato INT NOT NULL,
    ano_mes_referencia DATE NOT NULL,
    salario_bruto DECIMAL(10,2) NOT NULL,
    descontos DECIMAL(10,2),
    salario_liquido DECIMAL(10,2),
    user_modificacao VARCHAR(50),
    dt_ult_modificacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_contrato, ano_mes_referencia) REFERENCES Contrato(id_contrato, ano_mes_referencia) ON DELETE CASCADE
);

-- Criando a tabela de Férias
CREATE TABLE Ferias (
    id_ferias INT PRIMARY KEY AUTO_INCREMENT,
    id_contrato INT NOT NULL,
    ano_mes_referencia DATE NOT NULL,
    inicio_periodo DATE NOT NULL,
    fim_periodo DATE NOT NULL,
    dias_ferias INT NOT NULL,
    aprovado BOOLEAN DEFAULT FALSE,
    user_modificacao VARCHAR(50),
    dt_ult_modificacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_contrato, ano_mes_referencia) REFERENCES Contrato(id_contrato, ano_mes_referencia) ON DELETE CASCADE
);

INSERT INTO Departamentos (nome_departamento, id_gerente, user_modificacao)
VALUES
('Financeiro', 1, 'admin'),
('RH', 2, 'admin'),
('Marketing', 3, 'admin'),
('TI', 4, 'admin'),
('Operações', 5, 'admin'),
('Vendas', 6, 'admin'),
('Compras', 7, 'admin'),
('Logística', 8, 'admin'),
('Jurídico', 9, 'admin'),
('Auditoria', 10, 'admin'),
('Controle de Qualidade', 11, 'admin'),
('Pesquisa e Desenvolvimento', 12, 'admin'),
('Serviços Gerais', 13, 'admin'),
('Treinamento', 14, 'admin'),
('Planejamento', 15, 'admin'),
('Comunicação', 16, 'admin'),
('Produção', 17, 'admin'),
('Serviço ao Cliente', 18, 'admin'),
('Estratégia', 19, 'admin'),
('Inovação', 20, 'admin');

INSERT INTO Cargos (nome_cargo, salario_base, user_modificacao)
VALUES
('Analista Financeiro', 4000.00, 'admin'),
('Gerente de RH', 8000.00, 'admin'),
('Especialista em Marketing', 5000.00, 'admin'),
('Desenvolvedor de Software', 6000.00, 'admin'),
('Supervisor de Operações', 5500.00, 'admin'),
('Representante de Vendas', 3000.00, 'admin'),
('Comprador', 4500.00, 'admin'),
('Coordenador de Logística', 4800.00, 'admin'),
('Advogado', 7000.00, 'admin'),
('Auditor Interno', 6500.00, 'admin'),
('Analista de Controle de Qualidade', 4200.00, 'admin'),
('Pesquisador', 6800.00, 'admin'),
('Assistente de Serviços Gerais', 2500.00, 'admin'),
('Instrutor de Treinamento', 4300.00, 'admin'),
('Analista de Planejamento', 4700.00, 'admin'),
('Especialista em Comunicação', 5200.00, 'admin'),
('Operador de Produção', 3500.00, 'admin'),
('Agente de Serviço ao Cliente', 3200.00, 'admin'),
('Estrategista de Negócios', 7200.00, 'admin'),
('Consultor de Inovação', 7500.00, 'admin');


INSERT INTO Contrato (
    id_contrato, 
    ano_mes_referencia, 
    nome, 
    cpf, 
    sexo, 
    data_nascimento, 
    endereco, 
    telefone, 
    email, 
    data_admissao, 
    id_cargo, 
    id_departamento, 
    situacao_funcional, 
    user_modificacao
) VALUES
(1, '2025-01-01', 'João Silva', '12345678901', 'M', '1990-01-01', 'Rua A, 123', '1234567890', 'joao.silva@example.com', '2023-01-01', 1, 1, 'Ativo', 'admin'),
(2, '2025-01-01', 'Maria Santos', '23456789012', 'F', '1985-02-02', 'Rua B, 234', '2345678901', 'maria.santos@example.com', '2023-02-01', 2, 2, 'Ativo', 'admin'),
(3, '2025-01-01', 'Pedro Almeida', '34567890123', 'M', '1992-03-03', 'Rua C, 345', '3456789012', 'pedro.almeida@example.com', '2023-03-01', 3, 3, 'Ativo', 'admin'),
(4, '2025-01-01', 'Ana Costa', '45678901234', 'F', '1988-04-04', 'Rua D, 456', '4567890123', 'ana.costa@example.com', '2023-04-01', 4, 4, 'Ativo', 'admin'),
(5, '2025-01-01', 'Carlos Pereira', '56789012345', 'M', '1991-05-05', 'Rua E, 567', '5678901234', 'carlos.pereira@example.com', '2023-05-01', 5, 5, 'Ativo', 'admin'),
(6, '2025-01-01', 'Fernanda Lima', '67890123456', 'F', '1987-06-06', 'Rua F, 678', '6789012345', 'fernanda.lima@example.com', '2023-06-01', 6, 6, 'Ativo', 'admin'),
(7, '2025-01-01', 'Paulo Moreira', '78901234567', 'M', '1993-07-07', 'Rua G, 789', '7890123456', 'paulo.moreira@example.com', '2023-07-01', 7, 7, 'Ativo', 'admin'),
(8, '2025-01-01', 'Juliana Souza', '89012345678', 'F', '1984-08-08', 'Rua H, 890', '8901234567', 'juliana.souza@example.com', '2023-08-01', 8, 8, 'Ativo', 'admin'),
(9, '2025-01-01', 'Rafael Rodrigues', '90123456789', 'M', '1994-09-09', 'Rua I, 901', '9012345678', 'rafael.rodrigues@example.com', '2023-09-01', 9, 9, 'Ativo', 'admin'),
(10, '2025-01-01', 'Patrícia Oliveira', '01234567890', 'F', '1989-10-10', 'Rua J, 012', '0123456789', 'patricia.oliveira@example.com', '2023-10-01', 10, 10, 'Ativo', 'admin'),
(11, '2025-01-01', 'Vinícius Fernandes', '11234567890', 'M', '1990-11-11', 'Rua K, 112', '1123456789', 'vinicius.fernandes@example.com', '2023-11-01', 11, 11, 'Ativo', 'admin'),
(12, '2025-01-01', 'Bianca Carvalho', '21234567890', 'F', '1985-12-12', 'Rua L, 212', '2123456789', 'bianca.carvalho@example.com', '2023-12-01', 12, 12, 'Ativo', 'admin'),
(13, '2025-01-01', 'Rodrigo Araujo', '31234567890', 'M', '1992-01-13', 'Rua M, 312', '3123456789', 'rodrigo.araujo@example.com', '2023-01-02', 13, 13, 'Ativo', 'admin'),
(14, '2025-01-01', 'Clara Nunes', '41234567890', 'F', '1988-02-14', 'Rua N, 412', '4123456789', 'clara.nunes@example.com', '2023-02-02', 14, 14, 'Ativo', 'admin'),
(15, '2025-01-01', 'Lucas Martins', '51234567890', 'M', '1991-03-15', 'Rua O, 512', '5123456789', 'lucas.martins@example.com', '2023-03-02', 15, 15, 'Ativo', 'admin'),
(16, '2025-01-01', 'Mariana Dias', '61234567890', 'F', '1987-04-16', 'Rua P, 612', '6123456789', 'mariana.dias@example.com', '2023-04-02', 16, 16, 'Ativo', 'admin'),
(17, '2025-01-01', 'Diego Almeida', '71234567890', 'M', '1993-05-17', 'Rua Q, 712', '7123456789', 'diego.almeida@example.com', '2023-05-02', 17, 17, 'Ativo', 'admin'),
(18, '2025-01-01', 'Aline Batista', '81234567890', 'F', '1984-06-18', 'Rua R, 812', '8123456789', 'aline.batista@example.com', '2023-06-02', 18, 18, 'Ativo', 'admin'),
(19, '2025-01-01', 'Gustavo Ribeiro', '91234567890', 'M', '1994-07-19', 'Rua S, 912', '9123456789', 'gustavo.ribeiro@example.com', '2023-07-02', 19, 19, 'Ativo', 'admin'),
(20, '2025-01-01', 'Luciana Mendes', '02134567890', 'F', '1989-08-20', 'Rua T, 021', '0213456789', 'luciana.mendes@example.com', '2023-08-02', 20, 20, 'Ativo', 'admin'),
(21, '2025-01-01', 'Renato Castro', '12234567890', 'M', '1990-09-21', 'Rua U, 122', '1223456789', 'renato.castro@example.com', '2023-09-02', 1, 1, 'Ativo', 'admin'),
(22, '2025-01-01', 'Camila Teixeira', '22234567890', 'F', '1985-10-22', 'Rua V, 222', '2223456789', 'camila.teixeira@example.com', '2023-10-02', 2, 2, 'Ativo', 'admin'),
(23, '2025-01-01', 'André Barbosa', '32234567890', 'M', '1992-11-23', 'Rua W, 322', '3223456789', 'andre.barbosa@example.com', '2023-11-02', 3, 3, 'Ativo', 'admin'),
(24, '2025-01-01', 'Vivian Gomes', '42234567890', 'F', '1988-12-24', 'Rua X, 422', '4223456789', 'vivian.gomes@example.com', '2023-12-02', 4, 4, 'Ativo', 'admin'),
(25, '2025-01-01', 'Thiago Cardoso', '52234567890', 'M', '1991-01-25', 'Rua Y, 522', '5223456789', 'thiago.cardoso@example.com', '2023-01-03', 5, 5, 'Ativo', 'admin'),
(26, '2025-01-01', 'Larissa Cunha', '62234567890', 'F', '1987-02-26', 'Rua Z, 622', '6223456789', 'larissa.cunha@example.com', '2023-02-03', 6, 6, 'Ativo', 'admin'),
(27, '2025-01-01', 'Felipe Gomes', '72234567890', 'M', '1993-03-27', 'Rua AA, 722', '7223456789', 'felipe.gomes@example.com', '2023-03-03', 7, 7, 'Ativo', 'admin'),
(28, '2025-01-01', 'Tatiana Souza', '82234567890', 'F', '1984-04-28', 'Rua AB, 822', '8223456789', 'tatiana.souza@example.com', '2023-04-03', 8, 8, 'Ativo', 'admin'),
(29, '2025-01-01', 'Bruno Ferreira', '92234567890', 'M', '1994-05-29', 'Rua AC, 922', '9223456789', 'bruno.ferreira@example.com', '2023-05-03', 9, 9, 'Ativo', 'admin'),
(30, '2025-01-01', 'Simone Rocha', '03234567890', 'F', '1989-06-30', 'Rua AD, 032', '0323456789', 'simone.rocha@example.com', '2023-06-03', 10, 10, 'Ativo', 'admin'),
(31, '2025-01-01', 'Ricardo Lopes', '13234567890', 'M', '1990-07-31', 'Rua AE, 132', '1323456789', 'ricardo.lopes@example.com', '2023-07-03', 11, 11, 'Ativo', 'admin'),
(32, '2025-01-01', 'Amanda Silva', '23234567890', 'F', '1985-08-01', 'Rua AF, 232', '2323456789', 'amanda.silva@example.com', '2023-08-03', 12, 12, 'Ativo', 'admin'),
(33, '2025-01-01', 'Marcelo Santos', '33234567890', 'M', '1992-09-02', 'Rua AG, 332', '3323456789', 'marcelo.santos@example.com', '2023-09-03', 13, 13, 'Ativo', 'admin'),
(34, '2025-01-01', 'Renata Lima', '43234567890', 'F', '1988-10-03', 'Rua AH, 432', '4323456789', 'renata.lima@example.com', '2023-10-03', 14, 14, 'Ativo', 'admin'),
(35, '2025-01-01', 'Eduardo Costa', '53234567890', 'M', '1991-11-04', 'Rua AI, 532', '5323456789', 'eduardo.costa@example.com', '2023-11-03', 15, 15, 'Ativo', 'admin'),
(36, '2025-01-01', 'Carolina Melo', '63234567890', 'F', '1987-12-05', 'Rua AJ, 632', '6323456789', 'carolina.melo@example.com', '2023-12-03', 16, 16, 'Ativo', 'admin'),
(37, '2025-01-01', 'Gabriel Almeida', '73234567890', 'M', '1993-01-06', 'Rua AK, 732', '7323456789', 'gabriel.almeida@example.com', '2023-01-04', 17, 17, 'Ativo', 'admin'),
(38, '2025-01-01', 'Letícia Rocha', '83234567890', 'F', '1984-02-07', 'Rua AL, 832', '8323456789', 'leticia.rocha@example.com', '2023-02-04', 18, 18, 'Ativo', 'admin'),
(39, '2025-01-01', 'Leonardo Lima', '93234567890', 'M', '1994-03-08', 'Rua AM, 932', '9323456789', 'leonardo.lima@example.com', '2023-03-04', 19, 19, 'Ativo', 'admin'),
(40, '2025-01-01', 'Viviane Oliveira', '04234567890', 'F', '1989-04-09', 'Rua AN, 042', '0423456789', 'viviane.oliveira@example.com', '2023-04-04', 20, 20, 'Ativo', 'admin'),
(41, '2025-01-01', 'José Moreira', '14234567890', 'M', '1990-05-10', 'Rua AO, 142', '1423456789', 'jose.moreira@example.com', '2023-05-04', 1, 1, 'Ativo', 'admin'),
(42, '2025-01-01', 'Marina Pereira', '24234567890', 'F', '1985-06-11', 'Rua AP, 242', '2423456789', 'marina.pereira@example.com', '2023-06-04', 2, 2, 'Ativo', 'admin'),
(43, '2025-01-01', 'Tiago Fernandes', '34234567890', 'M', '1992-07-12', 'Rua AQ, 342', '3423456789', 'tiago.fernandes@example.com', '2023-07-04', 3, 3, 'Ativo', 'admin'),
(44, '2025-01-01', 'Raquel Santos', '44234567890', 'F', '1988-08-13', 'Rua AR, 442', '4423456789', 'raquel.santos@example.com', '2023-08-04', 4, 4, 'Ativo', 'admin'),
(45, '2025-01-01', 'Daniel Barbosa', '54234567890', 'M', '1991-09-14', 'Rua AS, 542', '5423456789', 'daniel.barbosa@example.com', '2023-09-04', 5, 5, 'Ativo', 'admin'),
(46, '2025-01-01', 'Elaine Rodrigues', '64234567890', 'F', '1987-10-15', 'Rua AT, 642', '6423456789', 'elaine.rodrigues@example.com', '2023-10-04', 6, 6, 'Ativo', 'admin'),
(47, '2025-01-01', 'Matheus Silva', '74234567890', 'M', '1993-11-16', 'Rua AU, 742', '7423456789', 'matheus.silva@example.com', '2023-11-04', 7, 7, 'Ativo', 'admin'),
(48, '2025-01-01', 'Vanessa Almeida', '84234567890', 'F', '1984-12-17', 'Rua AV, 842', '8423456789', 'vanessa.almeida@example.com', '2023-12-04', 8, 8, 'Ativo', 'admin'),
(49, '2025-01-01', 'Alexandre Souza', '94234567890', 'M', '1994-01-18', 'Rua AW, 942', '9423456789', 'alexandre.souza@example.com', '2023-01-05', 9, 9, 'Ativo', 'admin'),
(50, '2025-01-01', 'Juliana Santos', '05234567890', 'F', '1989-02-19', 'Rua AX, 052', '0523456789', 'juliana.santos@example.com', '2023-02-05', 10, 10, 'Ativo', 'admin');


INSERT INTO Historico_Cargos (
    id_contrato, 
    ano_mes_referencia, 
    id_cargo_anterior, 
    id_cargo_novo, 
    data_alteracao, 
    motivo, 
    user_modificacao
) VALUES
(1, '2025-01-01', 1, 2, '2024-01-01', 'Promoção', 'admin'),
(2, '2025-01-01', 2, 3, '2024-02-01', 'Transferência', 'admin'),
(3, '2025-01-01', 3, 4, '2024-03-01', 'Reestruturação', 'admin'),
(4, '2025-01-01', 4, 5, '2024-04-01', 'Promoção', 'admin'),
(5, '2025-01-01', 5, 6, '2024-05-01', 'Transferência', 'admin'),
(6, '2025-01-01', 6, 7, '2024-06-01', 'Reestruturação', 'admin'),
(7, '2025-01-01', 7, 8, '2024-07-01', 'Promoção', 'admin'),
(8, '2025-01-01', 8, 9, '2024-08-01', 'Transferência', 'admin'),
(9, '2025-01-01', 9, 10, '2024-09-01', 'Reestruturação', 'admin'),
(10, '2025-01-01', 10, 11, '2024-10-01', 'Promoção', 'admin'),
(11, '2025-01-01', 11, 12, '2024-11-01', 'Transferência', 'admin'),
(12, '2025-01-01', 12, 13, '2024-12-01', 'Reestruturação', 'admin'),
(13, '2025-01-01', 13, 14, '2024-01-02', 'Promoção', 'admin'),
(14, '2025-01-01', 14, 15, '2024-02-02', 'Transferência', 'admin'),
(15, '2025-01-01', 15, 16, '2024-03-02', 'Reestruturação', 'admin'),
(16, '2025-01-01', 16, 17, '2024-04-02', 'Promoção', 'admin'),
(17, '2025-01-01', 17, 18, '2024-05-02', 'Transferência', 'admin'),
(18, '2025-01-01', 18, 19, '2024-06-02', 'Reestruturação', 'admin'),
(19, '2025-01-01', 19, 20, '2024-07-02', 'Promoção', 'admin'),
(20, '2025-01-01', 20, 1, '2024-08-02', 'Transferência', 'admin'),
(21, '2025-01-01', 1, 2, '2024-09-02', 'Reestruturação', 'admin'),
(22, '2025-01-01', 2, 3, '2024-10-02', 'Promoção', 'admin'),
(23, '2025-01-01', 3, 4, '2024-11-02', 'Transferência', 'admin'),
(24, '2025-01-01', 4, 5, '2024-12-02', 'Reestruturação', 'admin'),
(25, '2025-01-01', 5, 6, '2024-01-03', 'Promoção', 'admin'),
(26, '2025-01-01', 6, 7, '2024-02-03', 'Transferência', 'admin'),
(27, '2025-01-01', 7, 8, '2024-03-03', 'Reestruturação', 'admin'),
(28, '2025-01-01', 8, 9, '2024-04-03', 'Promoção', 'admin'),
(29, '2025-01-01', 9, 10, '2024-05-03', 'Transferência', 'admin'),
(30, '2025-01-01', 10, 11, '2024-06-03', 'Reestruturação', 'admin');


INSERT INTO Historico_Situacao_Funcional (
    id_contrato, 
    ano_mes_referencia, 
    situacao_anterior, 
    situacao_nova, 
    data_alteracao, 
    motivo, 
    user_modificacao
) VALUES
(1, '2025-01-01', 'Ativo', 'Afastado', '2024-01-01', 'Licença médica', 'admin'),
(2, '2025-01-01', 'Ativo', 'Demitido', '2024-02-01', 'Redução de custos', 'admin'),
(3, '2025-01-01', 'Ativo', 'Afastado', '2024-03-01', 'Licença maternidade', 'admin'),
(4, '2025-01-01', 'Ativo', 'Afastado', '2024-04-01', 'Licença médica', 'admin'),
(5, '2025-01-01', 'Ativo', 'Demitido', '2024-05-01', 'Desempenho insatisfatório', 'admin'),
(6, '2025-01-01', 'Ativo', 'Transferido', '2024-06-01', 'Transferência para outro departamento', 'admin'),
(7, '2025-01-01', 'Ativo', 'Aposentado', '2024-07-01', 'Aposentadoria', 'admin'),
(8, '2025-01-01', 'Ativo', 'Afastado', '2024-08-01', 'Licença médica', 'admin'),
(9, '2025-01-01', 'Ativo', 'Demitido', '2024-09-01', 'Redução de custos', 'admin'),
(10, '2025-01-01', 'Ativo', 'Transferido', '2024-10-01', 'Transferência para outro departamento', 'admin'),
(11, '2025-01-01', 'Ativo', 'Aposentado', '2024-11-01', 'Aposentadoria', 'admin'),
(12, '2025-01-01', 'Ativo', 'Afastado', '2024-12-01', 'Licença médica', 'admin'),
(13, '2025-01-01', 'Ativo', 'Afastado', '2024-01-02', 'Licença maternidade', 'admin'),
(14, '2025-01-01', 'Ativo', 'Demitido', '2024-02-02', 'Redução de custos', 'admin'),
(15, '2025-01-01', 'Ativo', 'Afastado', '2024-03-02', 'Licença médica', 'admin'),
(16, '2025-01-01', 'Ativo', 'Aposentado', '2024-04-02', 'Aposentadoria', 'admin'),
(17, '2025-01-01', 'Ativo', 'Demitido', '2024-05-02', 'Desempenho insatisfatório', 'admin'),
(18, '2025-01-01', 'Ativo', 'Transferido', '2024-06-02', 'Transferência para outro departamento', 'admin'),
(19, '2025-01-01', 'Ativo', 'Afastado', '2024-07-02', 'Licença médica', 'admin'),
(20, '2025-01-01', 'Ativo', 'Demitido', '2024-08-02', 'Redução de custos', 'admin');


INSERT INTO Folha_Pagamento (
    id_contrato, 
    ano_mes_referencia, 
    salario_bruto, 
    descontos, 
    salario_liquido, 
    user_modificacao
) VALUES
(1, '2025-01-01', 4000.00, 500.00, 3500.00, 'admin'),
(2, '2025-01-01', 8000.00, 800.00, 7200.00, 'admin'),
(3, '2025-01-01', 5000.00, 600.00, 4400.00, 'admin'),
(4, '2025-01-01', 6000.00, 700.00, 5300.00, 'admin'),
(5, '2025-01-01', 5500.00, 550.00, 4950.00, 'admin'),
(6, '2025-01-01', 3000.00, 300.00, 2700.00, 'admin'),
(7, '2025-01-01', 4500.00, 450.00, 4050.00, 'admin'),
(8, '2025-01-01', 4800.00, 480.00, 4320.00, 'admin'),
(9, '2025-01-01', 7000.00, 700.00, 6300.00, 'admin'),
(10, '2025-01-01', 6500.00, 650.00, 5850.00, 'admin'),
(11, '2025-01-01', 4200.00, 420.00, 3780.00, 'admin'),
(12, '2025-01-01', 6800.00, 680.00, 6120.00, 'admin'),
(13, '2025-01-01', 2500.00, 250.00, 2250.00, 'admin'),
(14, '2025-01-01', 4300.00, 430.00, 3870.00, 'admin'),
(15, '2025-01-01', 4700.00, 470.00, 4230.00, 'admin'),
(16, '2025-01-01', 5200.00, 520.00, 4680.00, 'admin'),
(17, '2025-01-01', 3500.00, 350.00, 3150.00, 'admin'),
(18, '2025-01-01', 3200.00, 320.00, 2880.00, 'admin'),
(19, '2025-01-01', 7200.00, 720.00, 6480.00, 'admin'),
(20, '2025-01-01', 7500.00, 750.00, 6750.00, 'admin'),
(21, '2025-01-01', 4000.00, 500.00, 3500.00, 'admin'),
(22, '2025-01-01', 8000.00, 800.00, 7200.00, 'admin'),
(23, '2025-01-01', 5000.00, 600.00, 4400.00, 'admin'),
(24, '2025-01-01', 6000.00, 700.00, 5300.00, 'admin'),
(25, '2025-01-01', 5500.00, 550.00, 4950.00, 'admin'),
(26, '2025-01-01', 3000.00, 300.00, 2700.00, 'admin'),
(27, '2025-01-01', 4500.00, 450.00, 4050.00, 'admin'),
(28, '2025-01-01', 4800.00, 480.00, 4320.00, 'admin'),
(29, '2025-01-01', 7000.00, 700.00, 6300.00, 'admin'),
(30, '2025-01-01', 6500.00, 650.00, 5850.00, 'admin'),
(31, '2025-01-01', 4200.00, 420.00, 3780.00, 'admin'),
(32, '2025-01-01', 6800.00, 680.00, 6120.00, 'admin'),
(33, '2025-01-01', 2500.00, 250.00, 2250.00, 'admin'),
(34, '2025-01-01', 4300.00, 430.00, 3870.00, 'admin'),
(35, '2025-01-01', 4700.00, 470.00, 4230.00, 'admin'),
(36, '2025-01-01', 5200.00, 520.00, 4680.00, 'admin'),
(37, '2025-01-01', 3500.00, 350.00, 3150.00, 'admin'),
(38, '2025-01-01', 3200.00, 320.00, 2880.00, 'admin'),
(39, '2025-01-01', 7200.00, 720.00, 6480.00, 'admin'),
(40, '2025-01-01', 7500.00, 750.00, 6750.00, 'admin');



INSERT INTO Ferias (
    id_contrato, 
    ano_mes_referencia, 
    inicio_periodo, 
    fim_periodo, 
    dias_ferias, 
    aprovado, 
    user_modificacao
) VALUES
(1, '2025-01-01', '2024-01-01', '2024-01-15', 15, TRUE, 'admin'),
(2, '2025-01-01', '2024-02-01', '2024-02-14', 14, TRUE, 'admin'),
(3, '2025-01-01', '2024-03-01', '2024-03-15', 15, FALSE, 'admin'),
(4, '2025-01-01', '2024-04-01', '2024-04-10', 10, TRUE, 'admin'),
(5, '2025-01-01', '2024-05-01', '2024-05-15', 15, FALSE, 'admin'),
(6, '2025-01-01', '2024-06-01', '2024-06-14', 14, TRUE, 'admin'),
(7, '2025-01-01', '2024-07-01', '2024-07-15', 15, TRUE, 'admin'),
(8, '2025-01-01', '2024-08-01', '2024-08-10', 10, FALSE, 'admin'),
(9, '2025-01-01', '2024-09-01', '2024-09-15', 15, TRUE, 'admin'),
(10, '2025-01-01', '2024-10-01', '2024-10-14', 14, FALSE, 'admin'),
(11, '2025-01-01', '2024-11-01', '2024-11-15', 15, TRUE, 'admin'),
(12, '2025-01-01', '2024-12-01', '2024-12-10', 10, FALSE, 'admin'),
(13, '2025-01-01', '2024-01-02', '2024-01-16', 15, TRUE, 'admin'),
(14, '2025-01-01', '2024-02-02', '2024-02-15', 14, TRUE, 'admin'),
(15, '2025-01-01', '2024-03-02', '2024-03-17', 16, FALSE, 'admin'),
(16, '2025-01-01', '2024-04-02', '2024-04-12', 11, TRUE, 'admin'),
(17, '2025-01-01', '2024-05-02', '2024-05-18', 17, FALSE, 'admin'),
(18, '2025-01-01', '2024-06-02', '2024-06-16', 15, TRUE, 'admin'),
(19, '2025-01-01', '2024-07-02', '2024-07-17', 16, TRUE, 'admin'),
(20, '2025-01-01', '2024-08-02', '2024-08-12', 11, FALSE, 'admin'),
(21, '2025-01-01', '2024-09-02', '2024-09-17', 16, TRUE, 'admin'),
(22, '2025-01-01', '2024-10-02', '2024-10-16', 15, FALSE, 'admin'),
(23, '2025-01-01', '2024-11-02', '2024-11-18', 17, TRUE, 'admin'),
(24, '2025-01-01', '2024-12-02', '2024-12-12', 11, FALSE, 'admin'),
(25, '2025-01-01', '2024-01-03', '2024-01-18', 16, TRUE, 'admin'),
(26, '2025-01-01', '2024-02-03', '2024-02-17', 15, TRUE, 'admin'),
(27, '2025-01-01', '2024-03-03', '2024-03-18', 16, FALSE, 'admin'),
(28, '2025-01-01', '2024-04-03', '2024-04-13', 11, TRUE, 'admin'),
(29, '2025-01-01', '2024-05-03', '2024-05-19', 17, FALSE, 'admin'),
(30, '2025-01-01', '2024-06-03', '2024-06-18', 16, TRUE, 'admin'),
(31, '2025-01-01', '2024-07-03', '2024-07-19', 17, TRUE, 'admin'),
(32, '2025-01-01', '2024-08-03', '2024-08-13', 11, FALSE, 'admin'),
(33, '2025-01-01', '2024-09-03', '2024-09-18', 16, TRUE, 'admin'),
(34, '2025-01-01', '2024-10-03', '2024-10-17', 15, FALSE, 'admin'),
(35, '2025-01-01', '2024-11-03', '2024-11-19', 17, TRUE, 'admin'),
(36, '2025-01-01', '2024-12-03', '2024-12-13', 11, FALSE, 'admin'),
(37, '2025-01-01', '2024-01-04', '2024-01-19', 16, TRUE, 'admin'),
(38, '2025-01-01', '2024-02-04', '2024-02-18', 15, TRUE, 'admin'),
(39, '2025-01-01', '2024-03-04', '2024-03-19', 16, FALSE, 'admin'),
(40, '2025-01-01', '2024-04-04', '2024-04-14', 11, TRUE, 'admin');
