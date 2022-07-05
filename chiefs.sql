-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Tempo de geração: 05/07/2022 às 12:40
-- Versão do servidor: 5.7.34
-- Versão do PHP: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `kitchen-chiefs`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `chiefs`
--

CREATE TABLE `chiefs` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `meni` varchar(25) COLLATE utf8_bin NOT NULL,
  `decription` text COLLATE utf8_bin,
  `ranking` int(11) NOT NULL,
  `price` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Despejando dados para a tabela `chiefs`
--

INSERT INTO `chiefs` (`id`, `name`, `meni`, `decription`, `ranking`, `price`) VALUES
(1, 'Erick Jacquin', 'Steak Tartare', '', 3, '100.00'),
(2, 'Erick Jacquin', 'Le Bife', NULL, 5, '95.00'),
(3, 'Henrique Fogaça', 'Cupim Assado', NULL, 3, '150.00'),
(4, 'Henrique Fogaça', 'Pure', NULL, 3, '50.00'),
(5, 'Henrique Fogaça', 'Cordeiro', NULL, 5, '100.00'),
(6, 'Helena Rizzo', 'Peixe no tucupi', NULL, 5, '100.00'),
(7, 'Helena Rizzo', 'Bochecha de boi', NULL, 4, '79.00'),
(8, 'Helena Rizzo', 'Noque de mandioquinha', NULL, 3, '60.00'),
(9, 'Helena Rizzo', 'Maniocas', NULL, 4, '50.00');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `chiefs`
--
ALTER TABLE `chiefs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `chiefs`
--
ALTER TABLE `chiefs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
