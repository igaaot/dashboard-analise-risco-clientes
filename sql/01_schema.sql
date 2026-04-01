CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    renda_mensal NUMERIC(10,2) NOT NULL,
    score_credito INT NOT NULL
);

CREATE TABLE categorias (
    id SERIAL PRIMARY KEY,
    nome_categoria VARCHAR(100) NOT NULL
);

CREATE TABLE transacoes (
    id SERIAL PRIMARY KEY,
    cliente_id INT NOT NULL REFERENCES clientes(id),
    categoria_id INT NOT NULL REFERENCES categorias(id),
    valor NUMERIC(10,2) NOT NULL,
    data_transacao DATE NOT NULL
);
