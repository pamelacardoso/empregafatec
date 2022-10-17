-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16-Out-2022 às 23:50
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `empregafatec`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aprova_aluno`
--

CREATE TABLE `aprova_aluno` (
  `id_aprova_aluno` int(11) NOT NULL,
  `id_aluno` int(11) NOT NULL,
  `id_fatec` int(11) NOT NULL,
  `data_aprovacao` date NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aprova_empresa`
--

CREATE TABLE `aprova_empresa` (
  `id_aprova_empresa` int(11) NOT NULL,
  `id_fatec` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `data_aprovacao` date NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aprova_fatec`
--

CREATE TABLE `aprova_fatec` (
  `id_aprova_fatec` int(11) NOT NULL,
  `id_fatec` int(11) NOT NULL,
  `id_funcionario` int(11) NOT NULL,
  `data_aprovacao` date NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aprova_vaga`
--

CREATE TABLE `aprova_vaga` (
  `id_aprova_vaga` int(11) NOT NULL,
  `id_vaga` int(11) NOT NULL,
  `id_fatec` int(11) NOT NULL,
  `data_aprovacao` date NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cad_aluno`
--

CREATE TABLE `cad_aluno` (
  `id_aluno` int(11) NOT NULL,
  `ra` varchar(13) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `sobrenome` varchar(60) NOT NULL,
  `data_nascimento` date NOT NULL,
  `telefone` varchar(10) NOT NULL,
  `celular` varchar(11) NOT NULL,
  `email` varchar(60) NOT NULL,
  `cidade` varchar(30) NOT NULL,
  `github` varchar(70) NOT NULL,
  `linkedin` varchar(70) NOT NULL,
  `curso` varchar(50) NOT NULL,
  `data_inicio_fatec` date NOT NULL,
  `data_previsao_termino` date NOT NULL,
  `objetivo` varchar(100) NOT NULL,
  `pretensao_salarial` int(11) NOT NULL,
  `t_clt` tinyint(1) NOT NULL,
  `t_pj` tinyint(1) NOT NULL,
  `t_estagio_ferias` tinyint(1) NOT NULL,
  `t_estagio_regular` tinyint(1) NOT NULL,
  `t_freelancer` tinyint(1) NOT NULL,
  `t_trainee` tinyint(1) NOT NULL,
  `m_hibrida` tinyint(1) NOT NULL,
  `m_homeoffice` tinyint(1) NOT NULL,
  `m_presencial` tinyint(1) NOT NULL,
  `i_ingles` tinyint(1) NOT NULL,
  `i_espanhol` tinyint(1) NOT NULL,
  `i_frances` tinyint(1) NOT NULL,
  `i_outro` varchar(30) NOT NULL,
  `habilidades` varchar(50) NOT NULL,
  `area_interesse` varchar(60) NOT NULL,
  `img_perfil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cad_empresa`
--

CREATE TABLE `cad_empresa` (
  `id_empresa` int(11) NOT NULL,
  `cpnj` varchar(20) NOT NULL,
  `razao_social` varchar(220) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `email` varchar(60) NOT NULL,
  `cidade` varchar(220) NOT NULL,
  `site` varchar(220) DEFAULT NULL,
  `linkedin` varchar(220) DEFAULT NULL,
  `descricao` varchar(400) DEFAULT NULL,
  `img_perfil` int(11) DEFAULT NULL,
  `empresa_parceira` tinyint(1) NOT NULL DEFAULT 0,
  `status_empresa` tinyint(1) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cad_fatec`
--

CREATE TABLE `cad_fatec` (
  `id_fatec` int(11) NOT NULL,
  `re` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `sobrenome` varchar(30) NOT NULL,
  `cpf` int(11) NOT NULL,
  `data_nascimento` date NOT NULL,
  `telefone` varchar(10) NOT NULL,
  `celular` varchar(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `cargo` varchar(30) NOT NULL,
  `entrada` varchar(20) NOT NULL,
  `grupo` varchar(10) NOT NULL,
  `nivel_permissao` varchar(20) NOT NULL,
  `usuario` varchar(15) NOT NULL,
  `img_perfil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `candidatura`
--

CREATE TABLE `candidatura` (
  `id_vaga` int(11) NOT NULL,
  `id_aluno` int(11) NOT NULL,
  `data_candidatura` date NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

CREATE TABLE `login` (
  `email` varchar(60) NOT NULL,
  `senha_login` varchar(60) NOT NULL,
  `tipo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`email`, `senha_login`, `tipo`) VALUES
('teste@camaleon.com.br', '1234', 'empresa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vagas`
--

CREATE TABLE `vagas` (
  `id_vaga` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `data_abertura` date NOT NULL,
  `data_limite` date NOT NULL,
  `cidade_vaga` varchar(30) NOT NULL,
  `carga_horaria` varchar(20) NOT NULL,
  `descricao_cargo` varchar(100) NOT NULL,
  `area_adm` tinyint(1) NOT NULL,
  `area_dev` tinyint(1) NOT NULL,
  `area_gpi` tinyint(1) NOT NULL,
  `area_ge` tinyint(1) NOT NULL,
  `area_gti` tinyint(1) NOT NULL,
  `area_infra` tinyint(1) NOT NULL,
  `area_seguranca` tinyint(1) NOT NULL,
  `t_clt` tinyint(1) NOT NULL,
  `t_pj` tinyint(1) NOT NULL,
  `t_estagio_ferias` tinyint(1) NOT NULL,
  `t_estagio_regular` tinyint(1) NOT NULL,
  `t_freelancer` tinyint(1) NOT NULL,
  `t_trainee` tinyint(1) NOT NULL,
  `m_hibrida` tinyint(1) NOT NULL,
  `m_homeoffice` tinyint(1) NOT NULL,
  `m_presencial` tinyint(1) NOT NULL,
  `faixa_salarial` int(11) NOT NULL,
  `habilidade` varchar(60) NOT NULL,
  `area_interesse` varchar(60) NOT NULL,
  `diferenciais` varchar(60) NOT NULL,
  `follow-up` tinyint(1) NOT NULL,
  `status` varchar(20) NOT NULL,
  `titulo` varchar(220) NOT NULL,
  `modalidade` varchar(220) NOT NULL,
  `tipo_vaga` varchar(220) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `vagas`
--

INSERT INTO `vagas` (`id_vaga`, `id_empresa`, `data_abertura`, `data_limite`, `cidade_vaga`, `carga_horaria`, `descricao_cargo`, `area_adm`, `area_dev`, `area_gpi`, `area_ge`, `area_gti`, `area_infra`, `area_seguranca`, `t_clt`, `t_pj`, `t_estagio_ferias`, `t_estagio_regular`, `t_freelancer`, `t_trainee`, `m_hibrida`, `m_homeoffice`, `m_presencial`, `faixa_salarial`, `habilidade`, `area_interesse`, `diferenciais`, `follow-up`, `status`, `titulo`, `modalidade`, `tipo_vaga`) VALUES
(2, 15, '2022-10-12', '2023-04-03', 'Itapira-SP', '20h/semana', 'descrição do cargo é essa', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 3000, 'descrição das habilidades', 'Desenvolvimento', 'esses são os diferenciais', 1, '1', 'Dev Front-end', 'Presencial', 'Estágio de Férias'),
(3, 15, '2021-09-07', '2024-10-12', 'Mogi Mirim/SP', '6h/dia', 'oi, sou a descrição', 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'habilidades necessárias são essas', 'Gestão', 'falar mandarim', 1, '1', 'Analista de Rh', 'Híbrida', 'Estágio de Férias');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aprova_aluno`
--
ALTER TABLE `aprova_aluno`
  ADD PRIMARY KEY (`id_aprova_aluno`),
  ADD KEY `id_aluno` (`id_aluno`),
  ADD KEY `id_fatec` (`id_fatec`);

--
-- Índices para tabela `aprova_empresa`
--
ALTER TABLE `aprova_empresa`
  ADD PRIMARY KEY (`id_aprova_empresa`),
  ADD KEY `id_empresa` (`id_empresa`),
  ADD KEY `id_fatec` (`id_fatec`);

--
-- Índices para tabela `aprova_fatec`
--
ALTER TABLE `aprova_fatec`
  ADD PRIMARY KEY (`id_aprova_fatec`),
  ADD KEY `id_fatec` (`id_fatec`);

--
-- Índices para tabela `aprova_vaga`
--
ALTER TABLE `aprova_vaga`
  ADD PRIMARY KEY (`id_aprova_vaga`),
  ADD KEY `id_fatec` (`id_fatec`),
  ADD KEY `id_vaga` (`id_vaga`);

--
-- Índices para tabela `cad_aluno`
--
ALTER TABLE `cad_aluno`
  ADD PRIMARY KEY (`id_aluno`),
  ADD UNIQUE KEY `ra` (`ra`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD KEY `email` (`email`);

--
-- Índices para tabela `cad_empresa`
--
ALTER TABLE `cad_empresa`
  ADD PRIMARY KEY (`id_empresa`),
  ADD UNIQUE KEY `cpnj` (`cpnj`),
  ADD KEY `email` (`email`) USING BTREE;

--
-- Índices para tabela `cad_fatec`
--
ALTER TABLE `cad_fatec`
  ADD PRIMARY KEY (`id_fatec`),
  ADD UNIQUE KEY `re` (`re`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD KEY `email` (`email`);

--
-- Índices para tabela `candidatura`
--
ALTER TABLE `candidatura`
  ADD PRIMARY KEY (`id_vaga`),
  ADD UNIQUE KEY `id_aluno` (`id_aluno`);

--
-- Índices para tabela `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`email`);

--
-- Índices para tabela `vagas`
--
ALTER TABLE `vagas`
  ADD PRIMARY KEY (`id_vaga`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aprova_aluno`
--
ALTER TABLE `aprova_aluno`
  MODIFY `id_aprova_aluno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `aprova_empresa`
--
ALTER TABLE `aprova_empresa`
  MODIFY `id_aprova_empresa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `aprova_fatec`
--
ALTER TABLE `aprova_fatec`
  MODIFY `id_aprova_fatec` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `aprova_vaga`
--
ALTER TABLE `aprova_vaga`
  MODIFY `id_aprova_vaga` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_aluno`
--
ALTER TABLE `cad_aluno`
  MODIFY `id_aluno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_empresa`
--
ALTER TABLE `cad_empresa`
  MODIFY `id_empresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `cad_fatec`
--
ALTER TABLE `cad_fatec`
  MODIFY `id_fatec` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `candidatura`
--
ALTER TABLE `candidatura`
  MODIFY `id_vaga` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `vagas`
--
ALTER TABLE `vagas`
  MODIFY `id_vaga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `aprova_aluno`
--
ALTER TABLE `aprova_aluno`
  ADD CONSTRAINT `aprova_aluno_ibfk_1` FOREIGN KEY (`id_aluno`) REFERENCES `cad_aluno` (`id_aluno`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `aprova_aluno_ibfk_2` FOREIGN KEY (`id_fatec`) REFERENCES `cad_fatec` (`id_fatec`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `aprova_empresa`
--
ALTER TABLE `aprova_empresa`
  ADD CONSTRAINT `aprova_empresa_ibfk_1` FOREIGN KEY (`id_empresa`) REFERENCES `cad_empresa` (`id_empresa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `aprova_empresa_ibfk_2` FOREIGN KEY (`id_fatec`) REFERENCES `cad_fatec` (`id_fatec`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `aprova_fatec`
--
ALTER TABLE `aprova_fatec`
  ADD CONSTRAINT `aprova_fatec_ibfk_1` FOREIGN KEY (`id_fatec`) REFERENCES `cad_fatec` (`id_fatec`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `aprova_vaga`
--
ALTER TABLE `aprova_vaga`
  ADD CONSTRAINT `aprova_vaga_ibfk_1` FOREIGN KEY (`id_fatec`) REFERENCES `cad_fatec` (`id_fatec`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `aprova_vaga_ibfk_2` FOREIGN KEY (`id_vaga`) REFERENCES `vagas` (`id_vaga`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `cad_aluno`
--
ALTER TABLE `cad_aluno`
  ADD CONSTRAINT `cad_aluno_ibfk_1` FOREIGN KEY (`email`) REFERENCES `login` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `cad_empresa`
--
ALTER TABLE `cad_empresa`
  ADD CONSTRAINT `cad_empresa_ibfk_1` FOREIGN KEY (`email`) REFERENCES `login` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `cad_fatec`
--
ALTER TABLE `cad_fatec`
  ADD CONSTRAINT `cad_fatec_ibfk_1` FOREIGN KEY (`email`) REFERENCES `login` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `candidatura`
--
ALTER TABLE `candidatura`
  ADD CONSTRAINT `candidatura_ibfk_1` FOREIGN KEY (`id_aluno`) REFERENCES `cad_aluno` (`id_aluno`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `candidatura_ibfk_2` FOREIGN KEY (`id_vaga`) REFERENCES `vagas` (`id_vaga`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
