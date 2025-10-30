-- 1. Ver todos os clientes
SELECT * FROM Cliente;

-- 2. Ver todos os produtos e seus preços
SELECT nome, preco, tipo, status FROM Produto;

-- 3. Ver todos os pedidos com nome do cliente
SELECT 
    Pedido.id_pedido,
    Cliente.nome AS cliente,
    Pedido.data_pedido,
    Pedido.status
FROM Pedido
JOIN Cliente ON Pedido.id_cliente = Cliente.id_cliente;

-- 4. Ver itens de um pedido com nome dos produtos
SELECT 
    Pedido.id_pedido,
    Produto.nome AS produto,
    Item_Pedido.quantidade,
    Item_Pedido.subtotal
FROM Item_Pedido
JOIN Produto ON Item_Pedido.id_produto = Produto.id_produto
JOIN Pedido ON Item_Pedido.id_pedido = Pedido.id_pedido
WHERE Pedido.id_pedido = 1;

-- 5. Ver o estoque de ingredientes
SELECT 
    Ingrediente.nome,
    Estoque.quantidade_atual,
    Estoque.quantidade_minima
FROM Estoque
JOIN Ingrediente ON Estoque.id_ingrediente = Ingrediente.id_ingrediente;

-- 6. Ver todos os pagamentos e o cliente correspondente
SELECT 
    Pagamento.id_pagamento,
    Cliente.nome AS cliente,
    Pagamento.valor_pago,
    Pagamento.forma_pagamento,
    Pagamento.status
FROM Pagamento
JOIN Pedido ON Pagamento.id_pedido = Pedido.id_pedido
JOIN Cliente ON Pedido.id_cliente = Cliente.id_cliente;

-- 7. Ver quais ingredientes são usados em cada produto
SELECT 
    Produto.nome AS produto,
    Ingrediente.nome AS ingrediente
FROM Produto_Ingrediente
JOIN Produto ON Produto_Ingrediente.id_produto = Produto.id_produto
JOIN Ingrediente ON Produto_Ingrediente.id_ingrediente = Ingrediente.id_ingrediente
ORDER BY Produto.nome;
