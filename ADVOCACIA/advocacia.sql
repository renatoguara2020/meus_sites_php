-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24-Abr-2020 às 00:50
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `advocacia`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `advogados`
--

CREATE TABLE `advogados` (
  `id` int(11) NOT NULL,
  `nome` varchar(35) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `email` varchar(35) NOT NULL,
  `especialidade` varchar(35) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `advogados`
--

INSERT INTO `advogados` (`id`, `nome`, `cpf`, `telefone`, `email`, `especialidade`, `foto`) VALUES
(9, 'Advogado Teste', '000.000.000-00', '(00) 00000-0000', 'advogado@hotmail.com', 'Familiar', '02.jpg'),
(10, 'Pedro Freitas', '777.777.777-77', '(77) 77777-7777', 'pedro@hotmail.com', 'Criminal', '01.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargos`
--

CREATE TABLE `cargos` (
  `id` int(11) NOT NULL,
  `nome` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cargos`
--

INSERT INTO `cargos` (`id`, `nome`) VALUES
(1, 'Advogado'),
(2, 'Tesoureiro'),
(3, 'Recepcionista'),
(4, 'Motoboy');

-- --------------------------------------------------------

--
-- Estrutura da tabela `especialidades`
--

CREATE TABLE `especialidades` (
  `id` int(11) NOT NULL,
  `nome` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `especialidades`
--

INSERT INTO `especialidades` (`id`, `nome`) VALUES
(1, 'Criminal'),
(2, 'Trabalhista'),
(3, 'Familiar');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(35) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `cargo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id`, `nome`, `cpf`, `telefone`, `email`, `cargo`) VALUES
(8, 'Paloma Campos', '444.444.444-44', '(33) 33333-3333', 'paloma@hotmail.com', 'Recepcionista'),
(20, 'Advogado Teste', '000.000.000-00', '(00) 00000-0000', 'advogado@hotmail.com', 'Advogado'),
(21, 'Tesoureito Teste', '555.555.555-55', '(33) 33333-3333', 'tesoureiro@hotmail.c', 'Tesoureiro'),
(22, 'Pedro Freitas', '777.777.777-77', '(77) 77777-7777', 'pedro@hotmail.com', 'Advogado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(35) NOT NULL,
  `usuario` varchar(35) NOT NULL,
  `senha` varchar(150) NOT NULL,
  `senha_original` varchar(20) NOT NULL,
  `nivel` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `usuario`, `senha`, `senha_original`, `nivel`) VALUES
(2, 'Administrador', 'hvfadvocacia@gmail.com', '202cb962ac59075b964b07152d234b70', '123', 'admin'),
(14, 'Advogado Teste', 'advogado@hotmail.com', '202cb962ac59075b964b07152d234b70', '123', 'Advogado'),
(15, 'Tesoureito Teste', 'tesoureiro@hotmail.com', '9079b6ee1d5ca04ab00e44e877a222ee', '55555555555', 'Tesoureiro'),
(16, 'Pedro Freitas', 'pedro@hotmail.com', '202cb962ac59075b964b07152d234b70', '123', 'Advogado');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `advogados`
--
ALTER TABLE `advogados`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `advogados`
--
ALTER TABLE `advogados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `cargos`
--
ALTER TABLE `cargos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
