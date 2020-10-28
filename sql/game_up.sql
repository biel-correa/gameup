-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28-Out-2020 às 21:43
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `game_up`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `games`
--

CREATE TABLE `games` (
  `game_id` int(11) NOT NULL,
  `game_description` varchar(200) NOT NULL,
  `game_name` varchar(50) NOT NULL,
  `game_creation_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `games`
--

INSERT INTO `games` (`game_id`, `game_description`, `game_name`, `game_creation_date`) VALUES
(1, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Velit, ex. Pariatur eaque sint similique saepe architecto eum. Harum, rem exercitationem!', 'CSGO', '2020-10-28'),
(2, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Velit, ex. Pariatur eaque sint similique saepe architecto eum. Harum, rem exercitationem!', 'LOL', '2020-10-28');

-- --------------------------------------------------------

--
-- Estrutura da tabela `levels`
--

CREATE TABLE `levels` (
  `level_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `level_name` varchar(30) DEFAULT NULL,
  `level_variation` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `levels`
--

INSERT INTO `levels` (`level_id`, `user_id`, `game_id`, `level_name`, `level_variation`) VALUES
(1, 5, 1, 'a', '1'),
(2, 5, 1, 'a', '2'),
(3, 5, 0, '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_creation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_password`, `user_creation_date`) VALUES
(3, 'teste', '202cb962ac59075b964b07152d234b70', '2020-10-21'),
(4, 'joao', '202cb962ac59075b964b07152d234b70', '2020-10-22'),
(5, 'carlos', '4297f44b13955235245b2497399d7a93', '2020-10-26');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`game_id`);

--
-- Índices para tabela `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`level_id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `games`
--
ALTER TABLE `games`
  MODIFY `game_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `levels`
--
ALTER TABLE `levels`
  MODIFY `level_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
