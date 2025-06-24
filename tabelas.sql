===============USUARIOS
CREATE TABLE usuarios (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  senha VARCHAR(255) NOT NULL,
  perfil VARCHAR(20) NOT NULL CHECK (perfil IN ('admin', 'vendedor')),
  criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  atualizado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

====================PRODUTOS
CREATE TABLE produtos (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  nome VARCHAR(100) NOT NULL,
  preco (10,2) NOT NULL CHECK (preco >= 0),
  estoque INTEGER NOT NULL DEFAULT 0 CHECK (estoque >= 0),
  imagem VARCHAR(255),
  data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

===================VENDAS
CREATE TABLE vendas (
  id SERIAL PRIMARY KEY,
  id_usuario UUID NOT NULL REFERENCES usuarios(id),
  data TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  status VARCHAR(20) DEFAULT 'finalizada' CHECK (status IN ('finalizada', 'cancelada'))
);

===================itens de venda
CREATE TABLE itens_venda (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  id_venda INTEGER NOT NULL REFERENCES vendas(id) ON DELETE CASCADE,
  id_produto UUID NOT NULL REFERENCES produtos(id),
  quantidade INTEGER NOT NULL CHECK (quantidade > 0),
  preco_unitario NUMERIC(10,2) NOT NULL CHECK (preco_unitario >= 0),
  criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
