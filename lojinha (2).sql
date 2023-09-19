

--
-- Banco de dados: `lojinha`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_cliente`
--

CREATE TABLE `tbl_cliente` (
  `Id_Cliente` int(11) NOT NULL,
  `Nome_Cliente` varchar(50) NOT NULL,
  `CPF_Cliente` varchar(14) NOT NULL,
  `Data_Nasc` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_produtos`
--

CREATE TABLE `tbl_produtos` (
  `ID_Produto` int(11) NOT NULL,
  `Nome_Prod` int(50) NOT NULL,
  `Categoria` varchar(11) NOT NULL,
  `Preço_Prod` decimal(11,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_telefone`
--

CREATE TABLE `tbl_telefone` (
  `Id_Fone` int(11) NOT NULL,
  `ID_Cliente` int(11) NOT NULL,
  `Telefone` varchar(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_vendas`
--

CREATE TABLE `tbl_vendas` (
  `ID_Venda` int(11) NOT NULL,
  `ID_Cliente` int(11) NOT NULL,
  `ID_Produto` int(11) NOT NULL,
  `Quantidade` varchar(11) NOT NULL,
  `Data_venda` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  ADD PRIMARY KEY (`Id_Cliente`);

--
-- Índices para tabela `tbl_produtos`
--
ALTER TABLE `tbl_produtos`
  ADD PRIMARY KEY (`ID_Produto`);

--
-- Índices para tabela `tbl_telefone`
--
ALTER TABLE `tbl_telefone`
  ADD PRIMARY KEY (`Id_Fone`),
  ADD KEY `ID_Cliente` (`ID_Cliente`);

--
-- Índices para tabela `tbl_vendas`
--
ALTER TABLE `tbl_vendas`
  ADD PRIMARY KEY (`ID_Venda`),
  ADD KEY `ID_Cliente` (`ID_Cliente`,`ID_Produto`),
  ADD KEY `ID_Produto` (`ID_Produto`);

--