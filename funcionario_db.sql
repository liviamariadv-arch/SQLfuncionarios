CREATE DATABASE IF NOT EXISTS DBempresa;
USE DBempresa;

DROP TABLE IF EXISTS funcionarios;

CREATE TABLE funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50),
    departamento VARCHAR(50),
    salario DECIMAL(10,2),
    data_admissao DATE,
    status VARCHAR(20) DEFAULT 'Ativo'
);

INSERT INTO funcionarios (nome, cargo, departamento, salario, data_admissao, status) VALUES
('Ana Silva', 'Desenvolvedor Frontend', 'TI', 4500.00, '2021-03-15', 'Ativo'),
('Carlos Eduardo', 'Desenvolvedor Backend', 'TI', 5500.00, '2019-06-10', 'Ativo'),
('Mariana Lima', 'Analista de RH', 'RH', 3800.00, '2020-01-20', 'Ativo'),
('Roberto Alves', 'Gerente de Projetos', 'TI', 8500.00, '2018-11-05', 'Ativo'),
('Fernanda Costa', 'Designer UX/UI', 'Marketing', NULL, '2022-04-01', 'Ativo'),
('Lucas Mendes', 'Analista Financeiro', 'Financeiro', 4200.00, '2021-08-12', 'Inativo'),
('Beatriz Rocha', 'Assistente Administrativo', 'RH', 2500.00, '2023-02-10', 'Ativo'),
('Gabriel Souza', 'Desenvolvedor Backend', 'TI', 5200.00, '2022-09-18', 'Ativo'),
('Patricia Gomes', 'Especialista em Marketing', 'Marketing', 4800.00, '2020-05-30', 'Ativo'),
('Diego Martins', 'Suporte Técnico', 'TI', 2800.00, '2023-01-15', NULL),
('Juliana Paes', 'Coordenadora de RH', 'RH', 6200.00, '2017-04-22', 'Ativo'),
('Marcelo Ribeiro', 'Analista Financeiro', 'Financeiro', NULL, '2022-11-01', 'Ativo'),
('Camila Rodrigues', 'Desenvolvedor Frontend', 'TI', 4600.00, '2021-10-05', 'Ativo'),
('Rafael Barbosa', 'Estagiário', 'TI', 1500.00, '2023-06-01', 'Ativo'),
('Larissa Dias', 'Estagiário', 'Marketing', 1500.00, '2023-07-15', 'Ativo'),
('Thiago Melo', 'Gerente Financeiro', 'Financeiro', 9000.00, '2016-02-18', 'Ativo'),
('Vanessa Nunes', 'Analista de Suporte', 'TI', 3100.00, '2019-12-01', 'Inativo'),
('Bruno Castro', 'Desenvolvedor Fullstack', 'TI', 6800.00, '2020-08-20', 'Ativo'),
('Amanda Faria', 'Assistente Financeiro', 'Financeiro', 2700.00, '2023-03-01', 'Ativo'),
('Rodrigo Teixeira', 'Diretor de Operações', 'Diretoria', 1500.00, '2015-01-10', 'Ativo');

update funcionarios
set salario = 6000.00
where nome like  'Carlos Eduardo';

update funcionarios
set salario = 4000.00
where nome like 'Fernanda Costa';

update funcionarios
set cargo = 'Gerente de Marketing'
where nome like 'Patricia Gomes';
update funcionarios 
set departamento = 'marketing'
where nome like 'Patricia Gomes';

update funcionarios
set cargo = 'assistente'
where nome like 'estagiario';

update funcionarios 
set status = 'inativo'
where nome in ('7', '10', '14');

update funcionarios 
set salario = 5000.00
where  nome like 'Desenvolvedor Frontend' or nome like 'Desenvolvedor Backend';

update funcionarios
set salario = 3000.00
where salario is null;

update funcionarios
set status = 'Confirmado'
where salario is not null;

update funcionarios
set salario = salario  * 1.10
where nome like 'TI';

update funcionarios
SET status = 'Pendente'
where status IS NULL;

delete from funcionarios 
where id = 15;

delete from funcionarios
where nome like 'Lucas Mendes';

delete from funcionarios
where data_admissao < '2018-01-01';

delete from funcionarios 
where nome in ('Estagiario', 'Suporte tecnico');

delete from funcionarios
where departamento = 'Marketing' or salario < 2000.00;

delete from funcionarios
where departamento = 'Financeiro' and salario is not null;

delete from funcionarios
where status = "Inativo";

delete from funcionarios
where nome like "TI" and  salario <3000.00;

delete from funcionarios 
where nome like "ID20";