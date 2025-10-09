--DML
USE db_devconnect;

INSERT INTO Usuario(nome_completo,nome_usuario, email, senha, foto_perfil_url)
VALUES 
('Livia Caires', 'liviacaires', 'liviacaires@icloud.com', 'liviacaires', 'Foto1.png'), 
('Amy Lee', 'amylee', 'amyleerebeka@gmail.com', 'amylee2', 'Foto2.png');

INSERT INTO Usuario(nome_completo,nome_usuario, email, senha, foto_perfil_url)
VALUES 
('Eloysa', 'eloysa', 'eloysa@icloud.com', '123', 'Foto1.png')

SELECT * FROM Usuario;

INSERT INTO Seguidor(usuarioid, seguidorid)
VALUES (1, 2);

SELECT * FROM Seguidor;

INSERT INTO Publicacao(usuarioid, descricao, imagem_url, data_publicacao)
VALUES (2, 'Hoje o dia foi legal', 'url.6969', '2025-06-11');

SELECT * FROM Publicacao;

INSERT INTO Curtida(usuarioid, publicacaoid)
VALUES (1, 1);

SELECT * FROM Curtida;

INSERT INTO Comentario(usuarioid, publicacaoid, texto, data_comentario)
VALUES (1, 1, 'Noite incrivel', '2025-06-11');

SELECT * FROM Comentario;