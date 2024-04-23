-- Atualizar o valor total de todos os pedidos para refletir um aumento de 10%
UPDATE pedidos SET valor_total = valor_total * 1.1;

-- Consultar os pedidos com um valor total superior à média de todos os pedidos
SELECT * FROM pedidos WHERE valor_total > (SELECT AVG(valor_total) FROM pedidos);

-- Consultar os usuários que fizeram pelo menos um pedido
SELECT DISTINCT u.* FROM usuarios u INNER JOIN pedidos p ON u.id = p.usuario_id;

-- Excluir todos os pedidos de usuários com o nome 'João'
DELETE FROM pedidos WHERE usuario_id IN (SELECT id FROM usuarios WHERE nome = 'João');

-- Consultar o número de pedidos por produto
SELECT produto, COUNT(*) AS total_pedidos FROM pedidos GROUP BY produto;
