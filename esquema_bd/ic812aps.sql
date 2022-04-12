-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 12-Abr-2022 às 22:15
-- Versão do servidor: 10.1.38-MariaDB
-- versão do PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ic812aps`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cd`
--

CREATE TABLE `cd` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `preco` double NOT NULL,
  `descricao` text NOT NULL,
  `artista` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cd`
--

INSERT INTO `cd` (`id`, `codigo`, `titulo`, `preco`, `descricao`, `artista`) VALUES
(1, 1, 'Falso Brilhante', 39.9, 'CD de música com várias faixas', 'Elis Regina'),
(2, 2, 'Uns', 21.9, 'CD de música com diversas faixas.', 'Caetano Veloso'),
(3, 3, 'Wave', 50.9, 'CD de música nacional com diversas faixas.', 'Antonio Carlos Jobim'),
(4, 4, 'Zerima', 30.9, 'CD com diversas faixas musicais.', 'Luiz Melodia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nome` varchar(500) NOT NULL,
  `sobrenome` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id`, `nome`, `sobrenome`, `email`) VALUES
(2, 'Fulano', 'Ciclando', 'email'),
(3, 'Fulano2', 'Ciclando', 'email'),
(4, 'Fulano3', 'Ciclando', 'email'),
(5, 'Fulano4', 'Ciclando', 'email'),
(6, 'Fulano5', 'Ciclando', 'email'),
(7, 'Fulano6', 'Eduardo', 'email'),
(8, 'Fulano6', 'Ciclando', 'email');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dvd`
--

CREATE TABLE `dvd` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `preco` double NOT NULL,
  `descricao` text NOT NULL,
  `duracao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `dvd`
--

INSERT INTO `dvd` (`id`, `codigo`, `titulo`, `preco`, `descricao`, `duracao`) VALUES
(1, 1, 'O Farol', 20.9, 'DVD de filme sobre A história de um antigo faroleiro chamado Old, que mora em a cidade de Maine do início do século XX.', 119),
(2, 2, 'UM LUGAR SILENCIOSO PARTE II', 21.53, 'Após os eventos em casa, a família Abbott agora enfrenta os terrores do mundo exterior. Forçados a se aventurar no desconhecido, eles percebem que as criaturas que caçam não são as únicas ameaças ocultas pelo caminho.', 97);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `id` int(11) NOT NULL,
  `cliente` int(11) NOT NULL,
  `desconto` double NOT NULL,
  `data_hora` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido_produto`
--
-- Error reading structure for table ic812aps.pedido_produto: #1932 - Table 'ic812aps.pedido_produto' doesn't exist in engine
-- Error reading data for table ic812aps.pedido_produto: #1064 - Você tem um erro de sintaxe no seu SQL próximo a 'FROM `ic812aps`.`pedido_produto`' na linha 1

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cd`
--
ALTER TABLE `cd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dvd`
--
ALTER TABLE `dvd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cliente` (`cliente`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cd`
--
ALTER TABLE `cd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `dvd`
--
ALTER TABLE `dvd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `fk_cliente` FOREIGN KEY (`cliente`) REFERENCES `cliente` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
