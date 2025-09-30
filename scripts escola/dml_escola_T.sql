--Usar um banco já criado
USE db_escola_T;

--INSERIR UM REGISTRO NA TABELA ESCOLA
INSERT INTO tb_escola (nome, endereco)
VALUES('Torloni', 'Estrada das Lágrimas, 579 - São José');

SELECT * FROM tb_escola;

--INSERIR UM REGISTRO NA TABELA TURMA
INSERT INTO tb_turma(serie, periodo, numero_sala, nome_turma)
VALUES
(2, 'Tarde', 16, 'SEDUC'),
(2, 'Manha', 16, 'SEDUC'),
(2, 'Noite', 16, 'SEDUC');

SELECT * FROM tb_turma;

--INSERIR UM REGISTRO NA TABELA PROVA
INSERT INTO tb_prova(nome_professor, materia, horario, nota, data_prova)
VALUES
('Ana Claudia','Educacao Fisica','13:15:00',9,'2025-09-25'),
('Rogeria','Matematica','14:20:00',8,'2025-09-26'),
('Ivan','Redacao','10:00:00',10,'2025-09-29');

SELECT * FROM tb_prova;

--INSERIR UM REGISTRO NA TABELA ALUNO
INSERT INTO tb_aluno(nome, cpf, matricula, data_nasc, id_escola)
VALUES('Ester','73643805829','000001','2007-07-06', 1);

INSERT INTO tb_aluno(nome, cpf, matricula, data_nasc, id_escola)
VALUES
('Lara','01321648847','000002','2007-08-01', 1),
('Daniel','11967594805','000003','2007-10-09', 1),
('Caua','47806263829','000004','2007-02-03', 1),
('Victor','77362088833','000005','2007-07-10', 1);

SELECT * FROM tb_aluno;

--ATUALIZAR UM REGISTRO PELO SEU IDENTIFICADOR
UPDATE tb_aluno
SET data_nasc = '2008-07-06'
WHERE nome = 'Ester';