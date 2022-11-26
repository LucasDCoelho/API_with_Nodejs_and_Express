CREATE TABLE tb_tipos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(20) NOT NULL
);

CREATE TABLE tb_bebidas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(20) NOT NULL,
    quantidade INT NOT NULL,
    detalhes VARCHAR(20) NOT NULL
);

ALTER TABLE tb_bebidas
ADD COLUMN tipo_id INT;

ALTER TABLE tb_bebidas
ADD FOREIGN KEY (tipo_id) REFERENCES tb_tipos(id);

SELECT * FROM tb_tipos;

INSERT INTO tb_tipos (descricao) VALUES ('Vodka');
INSERT INTO tb_tipos (descricao) VALUES ('Cachaça');
INSERT INTO tb_tipos (descricao) VALUES ('Cerveja');
INSERT INTO tb_tipos (descricao) VALUES ('Sem álcool');

INSERT INTO tb_bebidas (nome, quantidade, datalhes, id) VALUES ('Smirnoff', 20, '30% de Álcool', );

