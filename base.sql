-- Criar uma tabela chamada 'usuarios'
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100)
);

-- Inserir alguns dados na tabela
INSERT INTO usuarios (nome, email) VALUES
('João', 'joao@example.com'),
('Maria', 'maria@example.com'),
('Pedro', 'pedro@example.com');

-- Consultar todos os usuários
SELECT * FROM usuarios;

-- Consultar um usuário específico pelo ID
SELECT * FROM usuarios WHERE id = 2;

-- Atualizar o email de um usuário
UPDATE usuarios SET email = 'novo_email@example.com' WHERE id = 3;

-- Excluir um usuário
DELETE FROM usuarios WHERE id = 1;

-- Consultar novamente todos os usuários após as operações
SELECT * FROM usuarios;
