-- CLIENTES
INSERT INTO Cliente (nome, endereco, telefone, data_cadastro) VALUES
('João Silva', 'Rua das Flores, 123', '11988887777', '2025-01-10'),
('Maria Oliveira', 'Av. Paulista, 500', '11997776655', '2025-02-12'),
('Carlos Santos', 'Rua das Rosas, 45', '11996664433', '2025-03-20');

-- FUNCIONÁRIOS
INSERT INTO Funcionario (nome, cargo, salario, cpf, data_admissao, email, telefone) VALUES
('Ana Souza', 'Atendente', 2200.00, '123.456.789-10', '2024-12-01', 'ana@restaurante.com', '11999999999'),
('Bruno Costa', 'Cozinheiro', 3500.00, '987.654.321-00', '2024-10-15', 'bruno@restaurante.com', '11888888888');

-- LOG DE FUNCIONÁRIOS
INSERT INTO Log_Funcio (id_funcionario, acao, descricao, data_hora) VALUES
(1, 'Login', 'Funcionário entrou no sistema', '2025-10-29 09:00'),
(2, 'Preparar pedido', 'Preparou pedido #1', '2025-10-29 10:30');

-- PRODUTOS
INSERT INTO Produto (nome, preco, tipo, descricao, status) VALUES
('Hambúrguer Clássico', 25.00, 'Lanche', 'Pão, carne, queijo e alface', 'Ativo'),
('Batata Frita', 10.00, 'Acompanhamento', 'Porção de batata frita crocante', 'Ativo'),
('Refrigerante Lata', 6.00, 'Bebida', 'Lata 350ml', 'Ativo');

-- INGREDIENTES
INSERT INTO Ingrediente (nome, custo_unitario, unidade_medida) VALUES
('Pão', 1.50, 'unidade'),
('Carne Bovina', 5.00, 'unidade'),
('Queijo', 1.20, 'fatia'),
('Batata', 0.80, 'unidade'),
('Refrigerante', 3.00, 'lata');

-- PRODUTO x INGREDIENTE
INSERT INTO Produto_Ingrediente (id_produto, id_ingrediente) VALUES
(1, 1), (1, 2), (1, 3),   -- Hambúrguer: pão, carne, queijo
(2, 4),                   -- Batata frita: batata
(3, 5);                   -- Refrigerante: refrigerante

-- ESTOQUE
INSERT INTO Estoque (id_ingrediente, quantidade_atual, quantidade_minima) VALUES
(1, 50, 10),
(2, 30, 5),
(3, 40, 10),
(4, 60, 10),
(5, 80, 20);

-- PEDIDOS
INSERT INTO Pedido (id_cliente, id_funcionario, data_pedido, status) VALUES
(1, 1, '2025-10-29', 'Concluído'),
(2, 2, '2025-10-29', 'Em andamento');

-- ITENS DO PEDIDO
INSERT INTO Item_Pedido (id_pedido, id_produto, quantidade, valor_unitario, subtotal) VALUES
(1, 1, 1, 25.00, 25.00),
(1, 2, 1, 10.00, 10.00),
(2, 3, 2, 6.00, 12.00);

-- PAGAMENTOS
INSERT INTO Pagamento (id_pedido, data_pagamento, valor_pago, forma_pagamento, status) VALUES
(1, '2025-10-29', 35.00, 'Cartão', 'Pago');
