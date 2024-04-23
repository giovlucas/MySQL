-- Criar uma tabela de 'pedidos'
CREATE TABLE pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    produto VARCHAR(100),
    quantidade INT,
    valor_total DECIMAL(10, 2)
);

-- Inserir alguns pedidos na tabela
INSERT INTO pedidos (usuario_id, produto, quantidade, valor_total) VALUES
(2, 'Camiseta', 2, 50.00),
(3, 'Livro', 1, 20.00),
(1, 'Sapato', 1, 80.00);

-- Consultar todos os pedidos
SELECT * FROM pedidos;

-- Consultar pedidos de um usuário específico
SELECT * FROM pedidos WHERE usuario_id = 2;

-- Consultar pedidos com um valor total superior a $50
SELECT * FROM pedidos WHERE valor_total > 50.00;

-- Consultar pedidos ordenados pelo valor total em ordem decrescente
SELECT * FROM pedidos ORDER BY valor_total DESC;

-- Consultar o número total de pedidos
SELECT COUNT(*) AS total_pedidos FROM pedidos;

-- Consultar o valor total de todos os pedidos
SELECT SUM(valor_total) AS total_vendas FROM pedidos;

-- Consultar o valor total de pedidos por usuário
SELECT usuario_id, SUM(valor_total) AS total_vendas_por_usuario FROM pedidos GROUP BY usuario_id;

-- Consultar pedidos juntamente com os detalhes do usuário
SELECT p.*, u.nome AS nome_usuario, u.email FROM pedidos p INNER JOIN usuarios u ON p.usuario_id = u.id;
