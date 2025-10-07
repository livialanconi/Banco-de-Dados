--DML
USE db_devconnect;

--COLUNA USUARIO
INSERT INTO tb_usuario (nome completo, nome_usuario, email, senha, foto_perfil_url)
VALUES 
('Daniela Rocha', 'danirocha', 'danielarochgmail.com', 'danirochabr', 'www.imagemdevcon');

SELECT * FROM tb_usuario;

--COLUNA PUBLICACAO
INSERT INTO tb_publicacao (descricao, imagem_url, data_publicacao)
VALUES
('Hoje o dia esta lindo','www.imagemdevcon','2025-10-02');

SELECT * FROM tb_publicacao;

--COLUNA CURTIDA
INSERT INTO tb_curtida (usuario, publicacao)
VALUES
('danirocha', 'foto');

SELECT * FROM tb_curtida;

--COLUNA COMENTARIO
INSERT INTO tb_comentario (texto, data_comentario)
VALUES
('Que foto bonita', '2025-10-02');

SELECT * FROM tb_comentario;
