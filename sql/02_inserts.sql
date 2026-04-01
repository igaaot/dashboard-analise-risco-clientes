INSERT INTO clientes (nome, idade, cidade, renda_mensal, score_credito) VALUES
('Ana Souza', 34, 'Sao Paulo', 3200.00, 580),
('Carlos Silva', 41, 'Rio de Janeiro', 4500.00, 670),
('Marcos Lima', 38, 'Belo Horizonte', 8000.00, 720),
('Pedro Rocha', 29, 'Curitiba', 6100.00, 690),
('Juliana Costa', 31, 'Recife', 5200.00, 640);

INSERT INTO categorias (nome_categoria) VALUES
('Moradia'),
('Alimentacao'),
('Transporte'),
('Saude'),
('Lazer');

INSERT INTO transacoes (cliente_id, categoria_id, valor, data_transacao) VALUES
(1, 1, 1500.00, '2026-03-01'),
(1, 2, 900.00, '2026-03-05'),
(1, 3, 600.00, '2026-03-10'),
(1, 4, 500.00, '2026-03-15'),

(2, 1, 1200.00, '2026-03-02'),
(2, 2, 700.00, '2026-03-06'),
(2, 3, 400.00, '2026-03-12'),

(3, 1, 1800.00, '2026-03-03'),
(3, 2, 1100.00, '2026-03-07'),
(3, 5, 1000.00, '2026-03-20'),

(4, 1, 1400.00, '2026-03-04'),
(4, 2, 800.00, '2026-03-08'),
(4, 3, 500.00, '2026-03-11'),

(5, 1, 700.00, '2026-03-09'),
(5, 2, 350.00, '2026-03-13'),
(5, 3, 200.00, '2026-03-18');
