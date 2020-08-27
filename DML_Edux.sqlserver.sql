INSERT INTO Instituicao(Nome, Logradouro, Numero, Bairro, Cidade, UF, CEP)
VALUES ('SENAI', 'Almeida Barão de Limeira', '539', 'Santa Cecília', 'São Paulo','SP' ,'01202-001' );
SELECT * FROM Instituicao;


INSERT INTO Categoria(Descricao)
VALUES('Lutadores');
SELECT * FROM Categoria

INSERT INTO Tipo_Usuario(Tipo)
VALUES('Aluno')
SELECT * FROM Tipo_Usuario

INSERT INTO CURSO(Nome, Duracao, Descricao)
VALUES ('Informática', '2021-02-01T10:00:00' , 'Curso técnico de informático');
SELECT * FROM Curso

INSERT INTO Usuario(IdTipo_Usuario,IdInstituicao, Nome, Idade)
VALUES (2, 1, 'Joao', 16)
SELECT * FROM Usuario

INSERT INTO Objetivo (IdCategoria, Descricao)
VALUES(1,'Entregar Projeto EDUX com DDL,DML,DQL');
SELECT * FROM Objetivo;

INSERT INTO Turma(IdCurso, Periodo, Semestre, Serie, Capacidade)
VALUES (1,'Manhã', 'Primeiro', '2ºANO-EM',30)
SELECT * FROM Turma

INSERT INTO Post(IdUsuario,Texto,Imagem,Horario)
VALUES (1, 'Bom dia grupo!', 'imagem.jpg','2020-08-30T10:30:00')
SELECT * FROM Post

INSERT INTO Dicas(IdUsuario,Tema,Descricao)
VALUES (1, 'DEV-DML' ,'Dica Tarefa 37')
SELECT * FROM Dicas

INSERT INTO Prof_Turma(IdUsuario, IdTurma)
VALUES(1, 1)
SELECT * FROM Prof_Turma

INSERT INTO Aluno_Turma(IdUsuario,IdTurma)
VALUES(2, 1)
SELECT * FROM Aluno_Turma

INSERT INTO Objetivo_Aluno(IdObjetivo, IdAluno_Turma, Nota, DataEntrega)
VALUES(1,1,null,'2020-09-28T09:00:00')
SELECT * FROM Objetivo_Aluno

SELECT * FROM INSTITUICAO;
SELECT * FROM OBJETIVO;
SELECT * FROM CATEGORIA;
SELECT * FROM TIPO_USUARIO;
SELECT * FROM CURSO;
SELECT * FROM USUARIO;
SELECT * FROM TURMA;
SELECT * FROM POST;
SELECT * FROM DICAS;
SELECT * FROM PROF_TURMA;
SELECT * FROM ALUNO_TURMA;
SELECT * FROM OBJETIVO_ALUNO;