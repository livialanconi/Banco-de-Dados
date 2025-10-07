--DDL
CREATE DATABASE db_devconnect;

USE db_connect;

--COLUNA USUARIO
CREATE TABLE tb_usuario(
id INT IDENTITY(1,1) PRIMARY KEY,
nome_completo NVARCHAR(255) NOT NULL,
nome_usuario NVARCHAR(50) UNIQUE NOT NULL,
email NVARCHAR(255) UNIQUE NOT NULL,
senha NVARCHAR(50) NOT NULL,
foto_perfil_url NVARCHAR(150) NULL
);

SELECT * FROM tb_usuario;

--COLUNA PUBLICACAO
CREATE TABLE tb_publicacao(
id INT IDENTITY(1,1) PRIMARY KEY,
descricao NVARCHAR(255) NULL,
imagem_url NVARCHAR(150) NOT NULL,
data_publicacao DATE NOT NULL
);

id_usuario INT FOREIGN KEY REFERENCES tb_usuario(id)

SELECT * FROM tb_publicacao;

--COLUNA CURTIDA
CREATE TABLE tb_curtida(
id INT IDENTITY(1,1) PRIMARY KEY,
usuario INT FK NVARCHAR(50) UNIQUE NOT NULL,
publicacao NVARCHAR(150) NULL
);

id_usuario INT FOREIGN KEY REFERENCES tb_usuario(id)
id_publicacao INT FOREIGN KEY REFERENCES tb_publicacao(id)

SELECT * FROM tb_curtida;

--COLUNA COMENTARIO
CREATE TABLE tb_comentario(
id INT IDENTITY(1,1) PRIMARY KEY,
texto NVARCHAR(255) NOT NULL,
data_comentario DATE NOT NULL
);

id_usuario INT FOREIGN KEY REFERENCES tb_usuario(id)
id_publicacao INT FOREIGN KEY REFERENCES tb_publicacao(id)

SELECT * FROM tb_comentario;

--COLUNA SEGUIDOR
CREATE TABLE tb_seguidor(
	id_usuario_seguir INT NOT NULL,
	id_usuario_seguida INT NOT NULL,

	PRIMARY KEY (id_usuario_seguir, id_usuario_seguida)
);

	nome_usuario INT FOREIGN KEY REFERENCES id_usuario_seguir(id)

	SELECT * FROM tb_seguidor;