--3.1)
-- insira pelo menos 3 registros na tabela visitantes.
INSERT INTO visitantes (nome, data_nascimento, email) values ('Pedro', '2002-04-01', 'brolucassilva@gmail.com');
INSERT INTO visitantes (nome, data_nascimento, email) values ('Iracema', '1973-03-24', 'cema@gmail.com');
INSERT INTO visitantes (nome, data_nascimento, email) values ('Everton', '1963-06-25', 'everton@gmail.com');
INSERT INTO visitantes (nome, data_nascimento, email) values ('Barbara', '2004-01-16', 'babimei@gmail.com');

-- insira pelo menos 3 registros na tabela atrações
INSERT INTO atracao (nome, tipo, capacidade) values ('Montanha Russa', 'Perigosa', '12');
INSERT INTO atracao (nome, tipo, capacidade) values ('Samba', 'Média', '24');
INSERT INTO atracao (nome, tipo, capacidade) values ('Tiro ao alvo', 'Leve', '4');

-- insira pelo menos 2 registros na tabela ingressos.
INSERT INTO ingressos (visitantes_id, atracao_id, data_visita) values (1, 2, '2024-04-01');
INSERT INTO ingressos (visitantes_id, atracao_id, data_visita) values (3, 2, '2024-04-01');
INSERT INTO ingressos (visitantes_id, atracao_id, data_visita) values (4, 2, '2024-04-01');

-- insira pelo menos 2 registros na tabela funcionários.
INSERT INTO funcionarios (nome, cargo, salario, atracao_id) VALUES ('Amanda', 'Administrativo', 2.800, 1);
INSERT INTO funcionarios (nome, cargo, salario, atracao_id) VALUES ('Sandra', 'Serviços Gerais', 2.200, 1);

--3.2)
-- selecione todos os visitantes cadastrados.
SELECT * FROM visitantes;
-- selecione todas as atrações disponíveis.
SELECT * FROM atracao;

--3.3)
-- liste todos os visitantes que visitaram uma atração específica.
SELECT a.visitantes_id, b.nome FROM ingressos a, visitantes b WHERE a.atracao_id = 2 AND a.visitantes_id = b.id;
-- liste todos os funcionários que tem um salário maior que 3000
SELECT * FROM funcionarios WHERE salario > 3.000;

--3.4)
-- liste todos os visitantes ordenados pelo nome
SELECT * FROM visitantes ORDER BY nome;
-- liste todas as atrações ordenadas pela capacidade em ordem decrescente
SELECT * FROM atracao ORDER BY capacidade DESC;

--3.5)
-- calcule a média dos salários dos funcionários
SELECT ROUND(AVG(salario),3) AS media_salarial FROM funcionarios;
-- encontre a data mais recente de visita registrada
SELECT MAX (data_visita) AS data_mais_recente FROM ingressos;

--3.6)
-- liste todos os visitantes que nasceram antes do ano 2000
SELECT * FROM visitantes WHERE EXTRACT (year from data_nascimento::date) <= 2000;
-- calcule a idade de cada visitante com base na data de nascimento
SELECT nome, AGE(CURRENT_DATE, data_nascimento) AS idade FROM visitantes;
