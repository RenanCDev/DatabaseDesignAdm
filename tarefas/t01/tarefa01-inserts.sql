-- DEPARTAMENTO
INSERT INTO departamento (descricao) VALUES ('Financeiro');
INSERT INTO departamento (descricao) VALUES ('GG');
INSERT INTO departamento (descricao) VALUES ('Vendas');
INSERT INTO departamento (descricao) VALUES ('Frota');
INSERT INTO departamento (descricao) VALUES ('Logística');

-- FUNCIONARIO
INSERT INTO funcionario (nome, sexo, dt_nasc, salario, cod_depto)
VALUES ('Joseph Jalves', 'M', '1999-02-02', 750.00, 1);

INSERT INTO funcionario (nome, sexo, dt_nasc, salario, cod_depto)
VALUES ('T L@', 'F', '1999-05-05', 89326.00, 2);

INSERT INTO funcionario (nome, sexo, dt_nasc, salario, cod_depto)
VALUES ('Renan Nanã Pressão ', 'M', '1999-04-04', -800.00, 3);

INSERT INTO funcionario (nome, sexo, dt_nasc, salario, cod_depto)
VALUES ('Luiz !Irmão Foda', 'M', '1999-03-03', 750.00, 4);

INSERT INTO funcionario (nome, sexo, dt_nasc, salario, cod_depto)
VALUES ('Aron Gege', 'M', '1999-01-01', 800.00, 5);

-- ADICIONANDO GERENTES AOS DEPARTAMENTOS
UPDATE departamento SET cod_gerente = 1 WHERE codigo = 1;
UPDATE departamento SET cod_gerente = 3 WHERE codigo = 2;
UPDATE departamento SET cod_gerente = 5 WHERE codigo = 3;
UPDATE departamento SET cod_gerente = 4 WHERE codigo = 4;
UPDATE departamento SET cod_gerente = 2 WHERE codigo = 5;

-- PROJETO
INSERT INTO projeto (nome, descricao, data_inicio, data_fim, cod_depto, cod_responsavel)
VALUES ('Ligação de "NPS"', 'Ligar para os clientes no foda-se e falar "Aló! Aqui é José da Disbecol, bebidas AMBEV."', '2024-01-01', '2030-12-31', 1, 1);

INSERT INTO projeto (nome, descricao, data_inicio, data_fim, cod_depto, cod_responsavel)
VALUES ('Proposta Indecente', 'Fazer propostas indecentes para A-GEGE no horario da tarde.', '2025-03-01', '2030-12-31', 2, 2);

INSERT INTO projeto (nome, descricao, data_inicio, data_fim, cod_depto, cod_responsavel)
VALUES ('Fúria Contra a Injustiça', 'Tacar o foda-se e sair atacando de todas as formas a injustiça do bônus.', '2024-12-31', '2050-12-31', 3, 3);

INSERT INTO projeto (nome, descricao, data_inicio, data_fim, cod_depto, cod_responsavel)
VALUES ('Despedaçar o Coração dos Amigos', 'Deixar bem claro para os !não irmãos foda que eles não são irmãos fodas.', '2023-01-01', '2055-12-31', 4, 4);

INSERT INTO projeto (nome, descricao, data_inicio, data_fim, cod_depto, cod_responsavel)
VALUES ('Bancar o Sonso', 'Fingir ser um bom moço, enquanto enrola os cabelos na mão e aceita propostas.', '2025-03-01', '2030-12-31', 5, 5);

-- ATIVIDADE
INSERT INTO atividade (nome, descricao, data_inicio, data_fim, cod_responsavel)
VALUES ('Arregar', 'Arregar, sempre que "necessário".', '2024-01-01', '2030-12-31', 1);

INSERT INTO atividade (nome, descricao, data_inicio, data_fim, cod_responsavel)
VALUES ('Chamar Para Fazer Vídeo', 'Falar que você é perfeito para o vídeo.', '2025-03-01', '2030-12-31', 2);

INSERT INTO atividade (nome, descricao, data_inicio, data_fim, cod_responsavel)
VALUES ('Aguentar Assédios', 'Tolerar os assédios enquanto luta contra a injustiça do bônus.', '2024-12-31', '2050-12-31', 3);

INSERT INTO atividade (nome, descricao, data_inicio, data_fim, cod_responsavel)
VALUES ('Andar da Kancha', 'Andar na kancha de jogador todo empinadinho se sentindo o delícia do Jalves.', '2023-01-01', '2055-12-31', 4);

INSERT INTO atividade (nome, descricao, data_inicio, data_fim, cod_responsavel)
VALUES ('A Cretino', 'Falar "A cretino" sempre que poder, para desfarçar que esta dando uma de sonso,', '2025-03-01', '2030-12-31', 5);

-- ATIVIDADE_PROJETO
INSERT INTO atividade_projeto (cod_projeto, cod_atividade)
VALUES (1, 1);

INSERT INTO atividade_projeto (cod_projeto, cod_atividade)
VALUES (2, 2);

INSERT INTO atividade_projeto (cod_projeto, cod_atividade)
VALUES (3, 3);

INSERT INTO atividade_projeto (cod_projeto, cod_atividade)
VALUES (4, 4);

INSERT INTO atividade_projeto (cod_projeto, cod_atividade)
VALUES (5, 5);