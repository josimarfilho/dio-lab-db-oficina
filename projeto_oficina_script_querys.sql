use oficina;

-- ## CONSULTAS PARA GERAR METRICAS RELACIONADAS A OFINCINA ##

-- 1. Total de Ordens de Serviço Concluídas
-- Métrica: Quantidade total de ordens de serviço concluídas.

SELECT COUNT(*) AS TotalOrdensConcluidas
FROM OrdemServico
WHERE status = 'Concluído';

-- 2. Faturamento Total da Oficina
-- Métrica: Soma de todos os valores das ordens de serviço, representando o faturamento total.

SELECT SUM(valorOS) AS FaturamentoTotal
FROM OrdemServico;

-- 3. Média de Valor por Ordem de Serviço
-- Métrica: Valor médio de cada ordem de serviço.

SELECT AVG(valorOS) AS MediaValorOS
FROM OrdemServico;

-- 4. Serviço Mais Realizado
-- Métrica: Identifica o tipo de serviço mais realizado na oficina.

SELECT TS.descricao, COUNT(*) AS TotalServicos
FROM OrdemServico OS
JOIN TipoServico TS ON OS.tpServico = TS.tpServico
GROUP BY TS.descricao
ORDER BY TotalServicos DESC
LIMIT 1;

-- 5. Mecânico com Mais Ordens de Serviço Atendidas
-- Métrica: Mecânico que mais atendeu ordens de serviço.

SELECT M.nome, COUNT(*) AS TotalOrdensAtendidas
FROM MecanicoOrdemServico MOS
JOIN Mecanico M ON MOS.idMecanico = M.idMecanico
GROUP BY M.nome
ORDER BY TotalOrdensAtendidas DESC
LIMIT 1;

-- 6. Total de Veículos Atendidos por Marca
-- Métrica: Quantidade de veículos atendidos, agrupados por marca.

SELECT V.marca, COUNT(*) AS TotalVeiculos
FROM Veiculo V
JOIN OrdemServico OS ON V.idCliente = OS.idCliente
GROUP BY V.marca
ORDER BY TotalVeiculos DESC;

-- 7. Total de Peças Utilizadas nos Serviços
-- Métrica: Peças mais utilizadas nos serviços.

SELECT P.nome, COUNT(*) AS TotalUtilizacoes
FROM PecaOrdemServico POS
JOIN Peca P ON POS.idPeca = P.idPeca
GROUP BY P.nome
ORDER BY TotalUtilizacoes DESC;

-- 8. Clientes que Mais Gastaram na Oficina
-- Métrica: Top 5 clientes que mais gastaram na oficina.

SELECT C.nome, SUM(OS.valorOS) AS TotalGasto
FROM Clientes C
JOIN OrdemServico OS ON C.idCliente = OS.idCliente
GROUP BY C.nome
ORDER BY TotalGasto DESC
LIMIT 5;

-- 9. Tempo Médio de Conclusão de uma Ordem de Serviço
-- Métrica: Tempo médio (em horas) que uma ordem de serviço leva para ser concluída.

SELECT AVG(TIMESTAMPDIFF(HOUR, dataEmissao, dataFinal)) AS TempoMedioConclusaoHoras
FROM OrdemServico;


-- 10. Equipe de Mecânicos com Mais Serviços Realizados
-- Métrica: Equipe de mecânicos que realizou mais serviços.

SELECT EM.descricao, COUNT(*) AS TotalServicos
FROM MecanicoEquipe ME
JOIN EquipeMecanico EM ON ME.idEquipeMecanico = EM.idEquipeMecanico
JOIN MecanicoOrdemServico MOS ON ME.idMecanico = MOS.idMecanico
GROUP BY EM.descricao
ORDER BY TotalServicos DESC
LIMIT 1;

-- 11. Total de Serviços por Especialidade de Mecânico
-- Métrica: Quantidade de serviços realizados por especialidade de mecânico.

SELECT M.especialidade, COUNT(*) AS TotalServicos
FROM Mecanico M
JOIN MecanicoOrdemServico MOS ON M.idMecanico = MOS.idMecanico
GROUP BY M.especialidade
ORDER BY TotalServicos DESC;

-- 12. Clientes com Mais de uma Ordem de Serviço
-- Métrica: Clientes que realizaram mais de uma ordem de serviço.

SELECT C.nome, COUNT(*) AS TotalOrdens
FROM Clientes C
JOIN OrdemServico OS ON C.idCliente = OS.idCliente
GROUP BY C.nome
HAVING TotalOrdens >= 1
ORDER BY TotalOrdens DESC;


-- 13. Valor Total Gasto por Cliente
-- Métrica: Valor total gasto por cada cliente na oficina.

SELECT C.nome, SUM(OS.valorOS) AS TotalGasto
FROM Clientes C
JOIN OrdemServico OS ON C.idCliente = OS.idCliente
GROUP BY C.nome
ORDER BY TotalGasto DESC;


-- 14. Serviços Realizados por Mês
-- Métrica: Quantidade de serviços realizados por mês.

SELECT DATE_FORMAT(dataEmissao, '%Y-%m') AS Mes, COUNT(*) AS TotalServicos
FROM OrdemServico
GROUP BY Mes
ORDER BY Mes;

-- 15. Peças Mais Caras Utilizadas
-- Métrica: Peças mais caras utilizadas nos serviços.

SELECT P.nome, P.descricao, MAX(OS.valorOS) AS ValorMaximo
FROM Peca P
JOIN PecaOrdemServico POS ON P.idPeca = POS.idPeca
JOIN OrdemServico OS ON POS.idOrdemServico = OS.idOrdemServico
GROUP BY P.nome, P.descricao
ORDER BY ValorMaximo DESC
LIMIT 5;


-- 16. Mecânicos com Menos Serviços Realizados
-- Métrica: Mecânicos que realizaram menos serviços.

SELECT M.nome, COUNT(*) AS TotalServicos
FROM Mecanico M
LEFT JOIN MecanicoOrdemServico MOS ON M.idMecanico = MOS.idMecanico
GROUP BY M.nome
ORDER BY TotalServicos ASC
LIMIT 5;

-- 17. Clientes com Mais de um Veículo Atendido
-- Métrica: Clientes que possuem mais de um veículo atendido na oficina.

SELECT C.nome, COUNT(DISTINCT V.idVeiculo) AS TotalVeiculos
FROM Clientes C
JOIN Veiculo V ON C.idCliente = V.idCliente
GROUP BY C.nome
HAVING TotalVeiculos >= 1
ORDER BY TotalVeiculos DESC;

-- 18. Serviços com Maior Valor Médio
-- Métrica: Serviços com o maior valor médio.

SELECT TS.descricao, AVG(OS.valorOS) AS ValorMedio
FROM OrdemServico OS
JOIN TipoServico TS ON OS.tpServico = TS.tpServico
GROUP BY TS.descricao
ORDER BY ValorMedio DESC
LIMIT 5;

-- 19. Total de Serviços por Estado do Cliente
-- Métrica: Quantidade de serviços realizados por estado dos clientes.

SELECT E.estado, COUNT(*) AS TotalServicos
FROM Endereco E
JOIN Clientes C ON E.idEndereco = C.idEndereco
JOIN OrdemServico OS ON C.idCliente = OS.idCliente
GROUP BY E.estado
ORDER BY TotalServicos DESC;

-- 20. Clientes que Não Realizaram Nenhum Serviço
-- Métrica: Clientes que não realizaram nenhuma ordem de serviço.

SELECT C.nome
FROM Clientes C
LEFT JOIN OrdemServico OS ON C.idCliente = OS.idCliente
WHERE OS.idOrdemServico IS NULL;
