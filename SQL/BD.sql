CREATE TABLE Cliente (
    id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    endereco TEXT,
    telefone TEXT,
    data_cadastro TEXT
);

CREATE TABLE Funcionario (
    id_funcionario INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    cargo TEXT,
    salario REAL,
    cpf TEXT UNIQUE,
    data_admissao TEXT,
    email TEXT,
    telefone TEXT
);

CREATE TABLE Log_Funcio (
    id_log INTEGER PRIMARY KEY AUTOINCREMENT,
    id_funcionario INTEGER NOT NULL,
    acao TEXT,
    descricao TEXT,
    data_hora TEXT,
    FOREIGN KEY (id_funcionario) REFERENCES Funcionario(id_funcionario)
);

CREATE TABLE Pedido (
    id_pedido INTEGER PRIMARY KEY AUTOINCREMENT,
    id_cliente INTEGER NOT NULL,
    id_funcionario INTEGER NOT NULL,
    data_pedido TEXT,
    status TEXT,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (id_funcionario) REFERENCES Funcionario(id_funcionario)
);

CREATE TABLE Pagamento (
    id_pagamento INTEGER PRIMARY KEY AUTOINCREMENT,
    id_pedido INTEGER UNIQUE NOT NULL,
    data_pagamento TEXT,
    valor_pago REAL,
    forma_pagamento TEXT,
    status TEXT,
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido)
);

CREATE TABLE Produto (
    id_produto INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    preco REAL,
    tipo TEXT,
    descricao TEXT,
    status TEXT
);

CREATE TABLE Item_Pedido (
    id_itempedido INTEGER PRIMARY KEY AUTOINCREMENT,
    id_pedido INTEGER NOT NULL,
    id_produto INTEGER NOT NULL,
    quantidade INTEGER NOT NULL,
    valor_unitario REAL,
    subtotal REAL,
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);

CREATE TABLE Ingrediente (
    id_ingrediente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    custo_unitario REAL,
    unidade_medida TEXT
);

CREATE TABLE Estoque (
    id_estoque INTEGER PRIMARY KEY AUTOINCREMENT,
    id_ingrediente INTEGER NOT NULL,
    quantidade_atual REAL,
    quantidade_minima REAL,
    FOREIGN KEY (id_ingrediente) REFERENCES Ingrediente(id_ingrediente)
);

CREATE TABLE Produto_Ingrediente (
    id_produto INTEGER NOT NULL,
    id_ingrediente INTEGER NOT NULL,
    PRIMARY KEY (id_produto, id_ingrediente),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto),
    FOREIGN KEY (id_ingrediente) REFERENCES Ingrediente(id_ingrediente)
);
