USE OFICINA;

-- Inserindo dados na tabela Endereco
INSERT INTO Endereco (logradouro, numero, complemento, referencia, bairro, CEP, estado) VALUES
('Rua A', '123', 'Apto 101', 'Próximo ao mercado', 'Centro', '12345678', 'SP'),
('Rua B', '456', 'Apto 202', 'Próximo à escola', 'Jardins', '23456789', 'SP'),
('Rua C', '789', 'Apto 303', 'Próximo ao parque', 'Vila Nova', '34567890', 'SP'),
('Rua D', '101', 'Apto 404', 'Próximo ao shopping', 'Bela Vista', '45678901', 'SP'),
('Rua E', '112', 'Apto 505', 'Próximo ao hospital', 'Moema', '56789012', 'SP'),
('Rua F', '131', 'Apto 606', 'Próximo à praça', 'Pinheiros', '67890123', 'SP'),
('Rua G', '415', 'Apto 707', 'Próximo ao cinema', 'Itaim', '78901234', 'SP'),
('Rua H', '161', 'Apto 808', 'Próximo ao teatro', 'Perdizes', '89012345', 'SP'),
('Rua I', '718', 'Apto 909', 'Próximo à estação', 'Barra Funda', '90123456', 'SP'),
('Rua J', '192', 'Apto 1010', 'Próximo ao terminal', 'Lapa', '01234567', 'SP'),
('Rua K', '213', 'Apto 1111', 'Próximo ao supermercado', 'Santana', '12345098', 'SP'),
('Rua L', '314', 'Apto 1212', 'Próximo à farmácia', 'Tatuapé', '23456109', 'SP'),
('Rua M', '516', 'Apto 1313', 'Próximo ao posto', 'Vila Mariana', '34567210', 'SP'),
('Rua N', '617', 'Apto 1414', 'Próximo ao banco', 'Ipiranga', '45678321', 'SP'),
('Rua O', '819', 'Apto 1515', 'Próximo à padaria', 'Santo Amaro', '56789432', 'SP');

-- Inserindo dados na tabela Clientes
INSERT INTO Clientes (nome, sobreNome, documento, idEndereco) VALUES
('João', 'Silva', '12345678901', 1),
('Maria', 'Oliveira', '23456789012', 2),
('Pedro', 'Souza', '34567890123', 3),
('Ana', 'Costa', '45678901234', 4),
('Carlos', 'Pereira', '56789012345', 5),
('Lucia', 'Fernandes', '67890123456', 6),
('Fernando', 'Lima', '78901234567', 7),
('Sandra', 'Martins', '89012345678', 8),
('Ricardo', 'Alves', '90123456789', 9),
('Tatiane', 'Ribeiro', '01234567890', 10),
('Marcos', 'Santos', '12345098761', 11),
('Juliana', 'Ferreira', '23456109872', 12),
('Roberto', 'Gomes', '34567210983', 13),
('Camila', 'Barbosa', '45678321094', 14),
('Lucas', 'Rocha', '56789432105', 15);

-- Inserindo dados na tabela Mecanico
INSERT INTO Mecanico (nome, cpf, idEndereco, especialidade) VALUES
('Carlos Silva', '11122233344', 1, 'Mecânica'),
('João Pereira', '22233344455', 2, 'Suspensão'),
('Pedro Costa', '33344455566', 3, 'Freios'),
('Ana Souza', '44455566677', 4, 'Motor'),
('Maria Fernandes', '55566677788', 5, 'Elétrica'),
('Fernando Lima', '66677788899', 6, 'Transmissão'),
('Sandra Martins', '77788899900', 7, 'Ar condicionado'),
('Ricardo Alves', '88899900011', 8, 'Injeção'),
('Tatiane Ribeiro', '99900011122', 9, 'Diagnóstico'),
('Lucia Oliveira', '00011122233', 10, 'Funilaria'),
('Marcos Santos', '11122233344', 11, 'Pintura'),
('Juliana Ferreira', '22233344455', 12, 'Alinhamento'),
('Roberto Gomes', '33344455566', 13, 'Balanceamento'),
('Camila Barbosa', '44455566677', 14, 'Troca de óleo'),
('Lucas Rocha', '55566677788', 15, 'Troca de pneus');

-- Inserindo dados na tabela Contato
INSERT INTO Contato (telefone, celular, email, idCliente) VALUES
('1111111111', '9999999999', 'joao@email.com', 1),
('2222222222', '8888888888', 'maria@email.com', 2),
('3333333333', '7777777777', 'pedro@email.com', 3),
('4444444444', '6666666666', 'ana@email.com', 4),
('5555555555', '5555555555', 'carlos@email.com', 5),
('6666666666', '4444444444', 'lucia@email.com', 6),
('7777777777', '3333333333', 'fernando@email.com', 7),
('8888888888', '2222222222', 'sandra@email.com', 8),
('9999999999', '1111111111', 'ricardo@email.com', 9),
('0000000000', '0000000000', 'tatiane@email.com', 10),
('1111111111', '9999999999', 'marcos@email.com', 11),
('2222222222', '8888888888', 'juliana@email.com', 12),
('3333333333', '7777777777', 'roberto@email.com', 13),
('4444444444', '6666666666', 'camila@email.com', 14),
('5555555555', '5555555555', 'lucas@email.com', 15);

-- Inserindo dados na tabela Veiculo
INSERT INTO Veiculo (placa, marca, modelo, idCliente) VALUES
('ABC1234', 'Ford', 'Fiesta', 1),
('DEF5678', 'Chevrolet', 'Onix', 2),
('GHI9012', 'Volkswagen', 'Gol', 3),
('JKL3456', 'Fiat', 'Uno', 4),
('MNO7890', 'Toyota', 'Corolla', 5),
('PQR1234', 'Honda', 'Civic', 6),
('STU5678', 'Hyundai', 'HB20', 7),
('VWX9012', 'Renault', 'Sandero', 8),
('YZA3456', 'Nissan', 'Versa', 9),
('BCD7890', 'Kia', 'Cerato', 10),
('EFG1234', 'Ford', 'Ka', 11),
('HIJ5678', 'Chevrolet', 'Prisma', 12),
('KLM9012', 'Volkswagen', 'Voyage', 13),
('NOP3456', 'Fiat', 'Palio', 14),
('QRS7890', 'Toyota', 'Yaris', 15);

-- Inserindo dados na tabela TipoServico
INSERT INTO TipoServico (tpServico, descricao) VALUES
(1, 'Troca de óleo'),
(2, 'Alinhamento'),
(3, 'Balanceamento'),
(4, 'Troca de pastilhas'),
(5, 'Reparo motor'),
(6, 'Troca de pneus'),
(7, 'Reparo câmbio'),
(8, 'Troca de amortecedores'),
(9, 'Reparo elétrico'),
(10, 'Troca de bateria'),
(11, 'Pintura'),
(12, 'Funilaria'),
(13, 'Diagnóstico'),
(14, 'Manutenção preventiva'),
(15, 'Manutenção corretiva');

-- Inserindo dados na tabela OrdemServico
INSERT INTO OrdemServico (idCliente, dataEmissao, descricao, status, valorOS, dataFinal, numero, tpServico) VALUES
(1, '2023-01-01 10:00:00', 'Troca de óleo', 'Concluído', 100.00, '2023-01-01 12:00:00', '001', 1),
(2, '2023-01-02 11:00:00', 'Alinhamento', 'Concluído', 80.00, '2023-01-02 13:00:00', '002', 2),
(3, '2023-01-03 12:00:00', 'Balanceamento', 'Concluído', 70.00, '2023-01-03 14:00:00', '003', 3),
(4, '2023-01-04 13:00:00', 'Troca de pastilhas', 'Concluído', 120.00, '2023-01-04 15:00:00', '004', 4),
(5, '2023-01-05 14:00:00', 'Reparo motor', 'Concluído', 500.00, '2023-01-05 16:00:00', '005', 5),
(6, '2023-01-06 15:00:00', 'Troca de pneus', 'Concluído', 300.00, '2023-01-06 17:00:00', '006', 6),
(7, '2023-01-07 16:00:00', 'Reparo câmbio', 'Concluído', 400.00, '2023-01-07 18:00:00', '007', 7),
(8, '2023-01-08 17:00:00', 'Troca de amortecedores', 'Concluído', 250.00, '2023-01-08 19:00:00', '008', 8),
(9, '2023-01-09 18:00:00', 'Reparo elétrico', 'Concluído', 150.00, '2023-01-09 20:00:00', '009', 9),
(10, '2023-01-10 19:00:00', 'Troca de bateria', 'Concluído', 200.00, '2023-01-10 21:00:00', '010', 10),
(11, '2023-01-11 10:00:00', 'Pintura', 'Concluído', 350.00, '2023-01-11 12:00:00', '011', 11),
(12, '2023-01-12 11:00:00', 'Funilaria', 'Concluído', 450.00, '2023-01-12 13:00:00', '012', 12),
(13, '2023-01-13 12:00:00', 'Diagnóstico', 'Concluído', 50.00, '2023-01-13 14:00:00', '013', 13),
(14, '2023-01-14 13:00:00', 'Manutenção preventiva', 'Concluído', 200.00, '2023-01-14 15:00:00', '014', 14),
(15, '2023-01-15 14:00:00', 'Manutenção corretiva', 'Concluído', 300.00, '2023-01-15 16:00:00', '015', 15);

-- Inserindo dados na tabela MaoDeObra
INSERT INTO MaoDeObra (descricao, valor, idOrdemServico, idMecanico) VALUES
('Troca de óleo', 100.00, 1, 1),
('Alinhamento', 80.00, 2, 2),
('Balanceamento', 70.00, 3, 3),
('Troca de pastilhas', 120.00, 4, 4),
('Reparo motor', 500.00, 5, 5),
('Troca de pneus', 300.00, 6, 6),
('Reparo câmbio', 400.00, 7, 7),
('Troca de amortecedores', 250.00, 8, 8),
('Reparo elétrico', 150.00, 9, 9),
('Troca de bateria', 200.00, 10, 10),
('Pintura', 350.00, 11, 11),
('Funilaria', 450.00, 12, 12),
('Diagnóstico', 50.00, 13, 13),
('Manutenção preventiva', 200.00, 14, 14),
('Manutenção corretiva', 300.00, 15, 15);

-- Inserindo dados na tabela ClienteOrdemServico
INSERT INTO ClienteOrdemServico (idCliente, idOrdemServico) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15);

-- Inserindo dados na tabela Peca
INSERT INTO Peca (nome, descricao, modelo, marca) VALUES
('Filtro de óleo', 'Filtro de óleo para motor', 'F123', 'Bosch'),
('Pastilha de freio', 'Pastilha de freio dianteira', 'P456', 'Ferodo'),
('Pneu', 'Pneu 185/65 R15', 'T789', 'Pirelli'),
('Bateria', 'Bateria 60Ah', 'B012', 'Moura'),
('Amortecedor', 'Amortecedor dianteiro', 'A345', 'Monroe'),
('Correia dentada', 'Correia dentada para motor', 'C678', 'Gates'),
('Vela de ignição', 'Vela de ignição', 'V901', 'NGK'),
('Sensor de oxigênio', 'Sensor de oxigênio', 'S234', 'Bosch'),
('Lâmpada', 'Lâmpada H7', 'L567', 'Philips'),
('Filtro de ar', 'Filtro de ar para motor', 'F890', 'Mann-Filter'),
('Radiador', 'Radiador de alumínio', 'R123', 'Valeo'),
('Disco de freio', 'Disco de freio dianteiro', 'D456', 'Brembo'),
('Velas', 'Velas de ignição', 'V789', 'Denso'),
('Correia alternador', 'Correia alternador', 'C012', 'Contitech'),
('Junta do cabeçote', 'Junta do cabeçote', 'J345', 'Elring');

-- Inserindo dados na tabela PecaOrdemServico
INSERT INTO PecaOrdemServico (idPeca, idOrdemServico) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15);

-- Inserindo dados na tabela MecanicoOrdemServico
INSERT INTO MecanicoOrdemServico (idMecanico, idOrdemServico) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15);

-- Inserindo dados na tabela EquipeMecanico
INSERT INTO EquipeMecanico (descricao, nivel, responsavel) VALUES
('Equipe A', 1, 'Carlos Silva'),
('Equipe B', 2, 'João Pereira'),
('Equipe C', 3, 'Pedro Costa'),
('Equipe D', 4, 'Ana Souza'),
('Equipe E', 1, 'Maria Fernandes'),
('Equipe F', 2, 'Fernando Lima'),
('Equipe G', 3, 'Sandra Martins'),
('Equipe H', 4, 'Ricardo Alves'),
('Equipe I', 1, 'Tatiane Ribeiro'),
('Equipe J', 2, 'Lucia Oliveira'),
('Equipe K', 3, 'Marcos Santos'),
('Equipe L', 4, 'Juliana Ferreira'),
('Equipe M', 1, 'Roberto Gomes'),
('Equipe N', 2, 'Camila Barbosa'),
('Equipe O', 3, 'Lucas Rocha');

-- Inserindo dados na tabela MecanicoEquipe
INSERT INTO MecanicoEquipe (idMecanico, idEquipeMecanico) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15);