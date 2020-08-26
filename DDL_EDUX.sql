CREATE DATABASE EDUX;

USE EDUX;

--TABELAS

CREATE TABLE INSTITUICAO(
IdInstituicao int identity primary key,
Nome varchar(50),
Logradouro varchar(100),
Numero varchar(50),
Bairro varchar(50),
Cidade varchar(100),
UF varchar(50),
CEP varchar(10)
);

CREATE TABLE OBJETIVO(
IdObjetivo int identity primary key,
Categoria int foreign key references CATEGORIA(IdCategoria),
Descricao varchar(50)
);

CREATE TABLE CATEGORIA(
IdCategoria int identity primary key,
Descricao varchar(50)
);

CREATE TABLE TIPO_USUARIO(
IdTipo_Usuario int identity primary key,
Tipo varchar(50)
);

CREATE TABLE CURSO(
IdCurso int identity primary key,
Nome varchar(100),
Duracao Datetime,
Descricao varchar(250)
);

CREATE TABLE USUARIO(
IdUsuario int identity primary key,
Tipo_Usuario int foreign key references TIPO_USUARIO(IdTipo_Usuario),
Instituicao int foreign key references INSTITUICAO(IdInstituicao),
Nome varchar(100),
Idade int
);

CREATE TABLE TURMA(
IdTurma int identity primary key,
Curso int foreign key references CURSO(IdCurso),
Periodo varchar(50),
Semestre varchar(50),
Serie varchar(50),
Capacidade int
);

CREATE TABLE POST(
IdPost int identity primary key,
Usuario int foreign key references USUARIO(IdUsuario),
Texto varchar(250),
Imagem varchar(200),
Horario DateTime
);

CREATE TABLE DICAS(
IdDicas int identity primary key,
Usuario int foreign key references USUARIO(IdUsuario),
Tema varchar(250),
Descricao varchar(250)
);

CREATE TABLE PROF_TURMA(
IdProf_Turma int identity primary key,
Usuario int foreign key references USUARIO(IdUsuario),
Turma int foreign key references TURMA(IdTurma),
);

CREATE TABLE ALUNO_TURMA(
IdALuno_Turma int identity primary key,
Usuario int foreign key references USUARIO(IdUsuario),
Turma int foreign key references TURMA(IdTurma),

);

CREATE TABLE OBJETIVO_ALUNO(
IdObjetivo_Aluno int identity primary key,
Objetivo int foreign key references OBJETIVO(IdObjetivo),
Aluno_Turma int foreign key references ALUNO_TURMA(IdAluno_Turma),
Nota int,
DataEntrega DateTime
);