DROP DATABASE IF EXISTS parque;

CREATE DATABASE parque;

\c parque;


--2)TABELAS

CREATE TABLE visitantes (
    id serial primary key, 
    nome text not null, 
    data_nascimento date not null, 
    email text  not null
);

CREATE TABLE atracao (
    id serial primary key, 
    nome text not null, 
    tipo text not null, 
    capacidade integer not null
);

CREATE TABLE ingressos (
    id serial primary key, 
    visitantes_id integer references visitantes (id), 
    atracao_id integer references atracao (id), 
    data_visita date not null
);

CREATE TABLE funcionarios (
    id serial primary key,
    nome text not null,
    cargo text not null,
    salario numeric(10,3) not null,
    atracao_id integer references atracao (id)
);
