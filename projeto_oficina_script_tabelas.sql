CREATE DATABASE OFICINA;
USE OFICINA;

CREATE TABLE Endereco (
    idEndereco INT PRIMARY KEY AUTO_INCREMENT,
    logradouro VARCHAR(45) NOT NULL,
    numero VARCHAR(6) DEFAULT '0',
    complemento VARCHAR(45),
    referencia VARCHAR(45),
    bairro VARCHAR(30),
    CEP VARCHAR(8) NOT NULL,
    estado VARCHAR(20) NOT NULL
);

CREATE TABLE Clientes (
    idCliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(20) NOT NULL,
    sobreNome VARCHAR(40),
    documento CHAR(14) NOT NULL UNIQUE,
    idEndereco INT,
    CONSTRAINT fk_Clientes_endereco FOREIGN KEY (idEndereco) REFERENCES Endereco(idEndereco)
);

CREATE TABLE Mecanico (
    idMecanico INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    cpf VARCHAR(11),
    idEndereco INT,
    especialidade VARCHAR(15),
    CONSTRAINT fk_Mecanico_endereco FOREIGN KEY (idEndereco) REFERENCES Endereco(idEndereco)
);

CREATE TABLE Contato (
    idContato INT PRIMARY KEY AUTO_INCREMENT,
    telefone VARCHAR(11),
    celular VARCHAR(11) NOT NULL,
    email VARCHAR(30),
    idCliente INT NOT NULL,
    CONSTRAINT fk_contato_cliente FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente)
);

CREATE TABLE Veiculo (
    idVeiculo INT PRIMARY KEY AUTO_INCREMENT,
    placa CHAR(7),
    marca VARCHAR(15) NOT NULL,
    modelo VARCHAR(20) NOT NULL,
    idCliente INT NOT NULL,
    CONSTRAINT fk_veiculo_cliente FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente)
);

CREATE TABLE OrdemServico (
    idOrdemServico INT PRIMARY KEY AUTO_INCREMENT,
    idCliente INT,
    dataEmissao DATETIME,
    descricao VARCHAR(45),
    status VARCHAR(45),
    valorOS DECIMAL(10, 2),
    dataFinal DATETIME,
    numero VARCHAR(45),
    tpServico INT,
    CONSTRAINT fk_OrdemServico_TipoServico FOREIGN KEY (tpServico) REFERENCES TipoServico(tpServico)
);

CREATE TABLE MaoDeObra (
    idMaoDeObra INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(45) NOT NULL,
    valor DECIMAL(10, 2) DEFAULT 0,
    idOrdemServico INT NOT NULL,
    idMecanico INT NOT NULL,
    CONSTRAINT fk_MaoDeObra_OS FOREIGN KEY (idOrdemServico) REFERENCES OrdemServico(idOrdemServico),
    CONSTRAINT fk_MaoDeObra_mecanico FOREIGN KEY (idMecanico) REFERENCES Mecanico(idMecanico)
);

CREATE TABLE TipoServico (
    tpServico INT PRIMARY KEY,
    descricao VARCHAR(45)
);

CREATE TABLE ClienteOrdemServico (
    idCliente INT,
    idOrdemServico INT,
    PRIMARY KEY (idCliente, idOrdemServico),
    CONSTRAINT fk_ClienteOrdemServico_cliente FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente),
    CONSTRAINT fk_ClienteOrdemServico_OS FOREIGN KEY (idOrdemServico) REFERENCES OrdemServico(idOrdemServico)
);

CREATE TABLE PecaOrdemServico (
    idPeca INT,
    idOrdemServico INT,
    PRIMARY KEY (idPeca, idOrdemServico),
    CONSTRAINT fk_PecaOrdemServico_OS FOREIGN KEY (idOrdemServico) REFERENCES OrdemServico(idOrdemServico)
);

CREATE TABLE Peca (
    idPeca INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(20),
    descricao VARCHAR(30),
    modelo VARCHAR(15),
    marca VARCHAR(15)
);

CREATE TABLE MecanicoOrdemServico (
    idMecanico INT,
    idOrdemServico INT,
    PRIMARY KEY (idMecanico, idOrdemServico),
    CONSTRAINT fk_MecanicoOrdemServico_mecanico FOREIGN KEY (idMecanico) REFERENCES Mecanico(idMecanico),
    CONSTRAINT fk_MecanicoOrdemServico_OS FOREIGN KEY (idOrdemServico) REFERENCES OrdemServico(idOrdemServico)
);

CREATE TABLE EquipeMecanico (
    idEquipeMecanico INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(20),
    nivel TINYINT,
    responsavel VARCHAR(20)
);

CREATE TABLE MecanicoEquipe (
    idMecanico INT,
    idEquipeMecanico INT,
    PRIMARY KEY (idMecanico, idEquipeMecanico),
    CONSTRAINT fk_MecanicoEquipe_equipe FOREIGN KEY (idEquipeMecanico) REFERENCES EquipeMecanico(idEquipeMecanico),
    CONSTRAINT fk_MecanicoEquipe_mecanico FOREIGN KEY (idMecanico) REFERENCES Mecanico(idMecanico)
);