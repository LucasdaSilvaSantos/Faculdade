REM   Script: Estudo de caso 1
REM   Estudo de caso

CREATE TABLE pacientes(  
paciente_id int,  
nome varchar(255),  
data_nascimento date,  
endereco text,  
telefone varchar(20), 
CONSTRAINT pk_pacientes PRIMARY KEY (paciente_id));

CREATE TABLE medicos(  
medico_id int, 
nome varchar(255), 
especialidade varchar (255), 
telefone varchar(20) 
email varchar(255), 
CONSTRAINT pk_medicos PRIMARY KEY (medico_id));

CREATE TABLE consultas(  
consulta_id int, 
paciente_id int, 
medico_id int, 
data date, 
diagnostico text, 
CONSTRAINT pk_consultas PRIMARY KEY (consulta_id),  
CONSTRAINT fk_paciente_id FOREIGN KEY (paciente_id) REFERENCES pacientes (paciente_id),  
CONSTRAINT fk_medico_id FOREIGN KEY (medico_id) REFERENCES medicos (medico_id)  
);

CREATE TABLE internacoes( 
internacao_id int, 
paciente_id int, 
data_entrada date, 
data_saida date, 
quarto int, 
CONSTRAINT pk_INTERNACOES PRIMARY KEY (internacao_id),  
CONSTRAINT fk_paciente_id FOREIGN KEY (paciente_id) REFERENCES pacientes (paciente_id));

CREATE TABLE tratamentos(  
tratamento_id int, 
internacao_id int, 
desc_tratamento text, 
data date, 
CONSTRAINT pk_TRATAMENTOS PRIMARY KEY (tratamento_id),  
CONSTRAINT fk_internacao_id FOREIGN KEY (internacao_id) REFERENCES internacoes (internacao_id));

INSERT INTO pacientes (paciente_id, nome, data_nascimento, endereco, telefone) VALUES 
(1, 'Carlos Silva', '1990-05-15', 'Rua A, 123', '11999999999'), 
(2, 'Ana Costa', '1985-09-22', 'Rua B, 456', '11888888888'), 
(3, 'Marcos Oliveira', '1978-03-10', 'Avenida C, 789', '11955555555'), 
(4, 'Paula Fernandes', '1992-12-30', 'Travessa D, 101', '11944444444'), 
(5, 'José Santos', '2000-07-17', 'Rua E, 234', '11966666666'), 
(6, 'Luciana Souza', '1982-02-05', 'Praça F, 567', '11977777777'), 
(7, 'Ricardo Almeida', '1975-06-25', 'Alameda G, 890', '11933333333'), 
(8, 'Fernanda Rocha', '1995-11-13', 'Rua H, 432', '11922222222'), 
(9, 'Juliana Farias', '1988-01-01', 'Rua I, 876', '11988888888'), 
(10, 'Tiago Melo', '1993-08-08', 'Avenida J, 654', '11911111111');

INSERT INTO medicos (medico_id, nome, especialidade, telefone, email) VALUES 
(1, 'Dr. João Lima', 'Cardiologista', '11987654321', 'joao.lima@hospital.com'), 
(2, 'Dra. Maria Santos', 'Neurologista', '11987654322', 'maria.santos@hospital.com'), 
(3, 'Dr. Pedro Costa', 'Pediatra', '11987654323', 'pedro.costa@hospital.com'), 
(4, 'Dra. Camila Rocha', 'Ortopedista', '11987654324', 'camila.rocha@hospital.com'), 
(5, 'Dr. Rafael Almeida', 'Dermatologista', '11987654325', 'rafael.almeida@hospital.com'), 
(6, 'Dra. Julia Souza', 'Ginecologista', '11987654326', 'julia.souza@hospital.com'), 
(7, 'Dr. Thiago Melo', 'Psiquiatra', '11987654327', 'thiago.melo@hospital.com'), 
(8, 'Dra. Fernanda Moura', 'Endocrinologista', '11987654328', 'fernanda.moura@hospital.com'), 
(9, 'Dr. Leonardo Silva', 'Urologista', '11987654329', 'leonardo.silva@hospital.com'), 
(10, 'Dra. Paula Ribeiro', 'Oftalmologista', '11987654330', 'paula.ribeiro@hospital.com');

INSERT INTO consultas (consulta_id, paciente_id, medico_id, data, diagnostico) VALUES 
(1, 1, 1, '2024-10-27', 'Hipertensão controlada'), 
(2, 2, 2, '2024-10-27', 'Cefaleia crônica'), 
(3, 3, 3, '2024-10-26', 'Bronquite leve'), 
(4, 4, 4, '2024-10-25', 'Fratura no braço'), 
(5, 5, 5, '2024-10-24', 'Dermatite atópica'), 
(6, 6, 6, '2024-10-23', 'Infecção urinária'), 
(7, 7, 7, '2024-10-22', 'Ansiedade generalizada'), 
(8, 8, 8, '2024-10-21', 'Diabetes tipo 2'), 
(9, 9, 9, '2024-10-20', 'Cálculo renal'), 
(10, 10, 10, '2024-10-19', 'Miopia progressiva');

INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES 
(1, 1, '2024-10-27', NULL, 101), 
(2, 2, '2024-10-25', '2024-10-26', 102), 
(3, 3, '2024-10-20', NULL, 103), 
(4, 4, '2024-10-19', NULL, 104), 
(5, 5, '2024-10-18', '2024-10-21', 105), 
(6, 6, '2024-10-22', NULL, 106), 
(7, 7, '2024-10-23', '2024-10-24', 107), 
(8, 8, '2024-10-16', NULL, 108), 
(9, 9, '2024-10-15', '2024-10-17', 109), 
(10, 10, '2024-10-10', NULL, 110);

INSERT INTO tratamentos (tratamento_id, internacao_id, desc_tratamento, data) VALUES 
(1, 1, 'Administração de medicação intravenosa', '2024-10-27'), 
(2, 2, 'Fisioterapia respiratória', '2024-10-26'), 
(3, 3, 'Nebulização a cada 8 horas', '2024-10-21'), 
(4, 4, 'Imobilização com gesso', '2024-10-19'), 
(5, 5, 'Aplicação de creme dermatológico', '2024-10-19'), 
(6, 6, 'Tratamento com antibiótico', '2024-10-23'), 
(7, 7, 'Terapia cognitivo-comportamental', '2024-10-23'), 
(8, 8, 'Controle de glicemia', '2024-10-21'), 
(9, 9, 'Tratamento com laser', '2024-10-20'), 
(10, 10, 'Uso de colírio diariamente', '2024-10-19');

CREATE TABLE pacientes(  
paciente_id int,  
nome varchar(255),  
data_nascimento date,  
endereco varchar(50),  
telefone varchar(20), 
CONSTRAINT pk_pacientes PRIMARY KEY (paciente_id));

CREATE TABLE medicos(  
medico_id int, 
nome varchar(255), 
especialidade varchar (255), 
telefone varchar(20) 
email varchar(255), 
CONSTRAINT pk_medicos PRIMARY KEY (medico_id));

CREATE TABLE consultas(  
consulta_id int, 
paciente_id int, 
medico_id int, 
data date, 
diagnostico varchar(50), 
CONSTRAINT pk_consultas PRIMARY KEY (consulta_id),  
CONSTRAINT fk_paciente_id FOREIGN KEY (paciente_id) REFERENCES pacientes (paciente_id),  
CONSTRAINT fk_medico_id FOREIGN KEY (medico_id) REFERENCES medicos (medico_id)  
);

CREATE TABLE internacoes( 
internacao_id int, 
paciente_id int, 
data_entrada date, 
data_saida date, 
quarto int, 
CONSTRAINT pk_INTERNACOES PRIMARY KEY (internacao_id),  
CONSTRAINT fk_paciente_id FOREIGN KEY (paciente_id) REFERENCES pacientes (paciente_id));

CREATE TABLE tratamentos(  
tratamento_id int, 
internacao_id int, 
desc_tratamento varchar(50), 
data date, 
CONSTRAINT pk_TRATAMENTOS PRIMARY KEY (tratamento_id),  
CONSTRAINT fk_internacao_id FOREIGN KEY (internacao_id) REFERENCES internacoes (internacao_id));

INSERT INTO pacientes (paciente_id, nome, data_nascimento, endereco, telefone) VALUES 
(1, 'Carlos Silva', '1990-05-15', 'Rua A, 123', '11999999999'), 
(2, 'Ana Costa', '1985-09-22', 'Rua B, 456', '11888888888'), 
(3, 'Marcos Oliveira', '1978-03-10', 'Avenida C, 789', '11955555555'), 
(4, 'Paula Fernandes', '1992-12-30', 'Travessa D, 101', '11944444444'), 
(5, 'José Santos', '2000-07-17', 'Rua E, 234', '11966666666'), 
(6, 'Luciana Souza', '1982-02-05', 'Praça F, 567', '11977777777'), 
(7, 'Ricardo Almeida', '1975-06-25', 'Alameda G, 890', '11933333333'), 
(8, 'Fernanda Rocha', '1995-11-13', 'Rua H, 432', '11922222222'), 
(9, 'Juliana Farias', '1988-01-01', 'Rua I, 876', '11988888888'), 
(10, 'Tiago Melo', '1993-08-08', 'Avenida J, 654', '11911111111');

INSERT INTO medicos (medico_id, nome, especialidade, telefone, email) VALUES 
(1, 'Dr. João Lima', 'Cardiologista', '11987654321', 'joao.lima@hospital.com'), 
(2, 'Dra. Maria Santos', 'Neurologista', '11987654322', 'maria.santos@hospital.com'), 
(3, 'Dr. Pedro Costa', 'Pediatra', '11987654323', 'pedro.costa@hospital.com'), 
(4, 'Dra. Camila Rocha', 'Ortopedista', '11987654324', 'camila.rocha@hospital.com'), 
(5, 'Dr. Rafael Almeida', 'Dermatologista', '11987654325', 'rafael.almeida@hospital.com'), 
(6, 'Dra. Julia Souza', 'Ginecologista', '11987654326', 'julia.souza@hospital.com'), 
(7, 'Dr. Thiago Melo', 'Psiquiatra', '11987654327', 'thiago.melo@hospital.com'), 
(8, 'Dra. Fernanda Moura', 'Endocrinologista', '11987654328', 'fernanda.moura@hospital.com'), 
(9, 'Dr. Leonardo Silva', 'Urologista', '11987654329', 'leonardo.silva@hospital.com'), 
(10, 'Dra. Paula Ribeiro', 'Oftalmologista', '11987654330', 'paula.ribeiro@hospital.com');

INSERT INTO consultas (consulta_id, paciente_id, medico_id, data, diagnostico) VALUES 
(1, 1, 1, '2024-10-27', 'Hipertensão controlada'), 
(2, 2, 2, '2024-10-27', 'Cefaleia crônica'), 
(3, 3, 3, '2024-10-26', 'Bronquite leve'), 
(4, 4, 4, '2024-10-25', 'Fratura no braço'), 
(5, 5, 5, '2024-10-24', 'Dermatite atópica'), 
(6, 6, 6, '2024-10-23', 'Infecção urinária'), 
(7, 7, 7, '2024-10-22', 'Ansiedade generalizada'), 
(8, 8, 8, '2024-10-21', 'Diabetes tipo 2'), 
(9, 9, 9, '2024-10-20', 'Cálculo renal'), 
(10, 10, 10, '2024-10-19', 'Miopia progressiva');

INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES 
(1, 1, '2024-10-27', NULL, 101), 
(2, 2, '2024-10-25', '2024-10-26', 102), 
(3, 3, '2024-10-20', NULL, 103), 
(4, 4, '2024-10-19', NULL, 104), 
(5, 5, '2024-10-18', '2024-10-21', 105), 
(6, 6, '2024-10-22', NULL, 106), 
(7, 7, '2024-10-23', '2024-10-24', 107), 
(8, 8, '2024-10-16', NULL, 108), 
(9, 9, '2024-10-15', '2024-10-17', 109), 
(10, 10, '2024-10-10', NULL, 110);

INSERT INTO tratamentos (tratamento_id, internacao_id, desc_tratamento, data) VALUES 
(1, 1, 'Administração de medicação intravenosa', '2024-10-27'), 
(2, 2, 'Fisioterapia respiratória', '2024-10-26'), 
(3, 3, 'Nebulização a cada 8 horas', '2024-10-21'), 
(4, 4, 'Imobilização com gesso', '2024-10-19'), 
(5, 5, 'Aplicação de creme dermatológico', '2024-10-19'), 
(6, 6, 'Tratamento com antibiótico', '2024-10-23'), 
(7, 7, 'Terapia cognitivo-comportamental', '2024-10-23'), 
(8, 8, 'Controle de glicemia', '2024-10-21'), 
(9, 9, 'Tratamento com laser', '2024-10-20'), 
(10, 10, 'Uso de colírio diariamente', '2024-10-19');

CREATE TABLE medicos(  
medico_id int, 
nome varchar(255), 
especialidade varchar (255), 
telefone varchar(20), 
email varchar(255), 
CONSTRAINT pk_medicos PRIMARY KEY (medico_id));

INSERT INTO pacientes (paciente_id, nome, data_nascimento, endereco, telefone) VALUES 
(1, 'Carlos Silva', '1990-05-15', 'Rua A, 123', '11999999999'), 
INSERT INTO pacientes (paciente_id, nome, data_nascimento, endereco, telefone) VALUES(2, 'Ana Costa', '1985-09-22', 'Rua B, 456', '11888888888'), 
INSERT INTO pacientes (paciente_id, nome, data_nascimento, endereco, telefone) VALUES(3, 'Marcos Oliveira', '1978-03-10', 'Avenida C, 789', '11955555555'), 
INSERT INTO pacientes (paciente_id, nome, data_nascimento, endereco, telefone) VALUES(4, 'Paula Fernandes', '1992-12-30', 'Travessa D, 101', '11944444444'), 
INSERT INTO pacientes (paciente_id, nome, data_nascimento, endereco, telefone) VALUES(5, 'José Santos', '2000-07-17', 'Rua E, 234', '11966666666'), 
INSERT INTO pacientes (paciente_id, nome, data_nascimento, endereco, telefone) VALUES(6, 'Luciana Souza', '1982-02-05', 'Praça F, 567', '11977777777'), 
INSERT INTO pacientes (paciente_id, nome, data_nascimento, endereco, telefone) VALUES(7, 'Ricardo Almeida', '1975-06-25', 'Alameda G, 890', '11933333333'), 
INSERT INTO pacientes (paciente_id, nome, data_nascimento, endereco, telefone) VALUES(8, 'Fernanda Rocha', '1995-11-13', 'Rua H, 432', '11922222222'), 
INSERT INTO pacientes (paciente_id, nome, data_nascimento, endereco, telefone) VALUES(9, 'Juliana Farias', '1988-01-01', 'Rua I, 876', '11988888888'), 
INSERT INTO pacientes (paciente_id, nome, data_nascimento, endereco, telefone) VALUES(10, 'Tiago Melo', '1993-08-08', 'Avenida J, 654', '11911111111');

INSERT INTO medicos (medico_id, nome, especialidade, telefone, email) VALUES(1, 'Dr. João Lima', 'Cardiologista', '11987654321', 'joao.lima@hospital.com'), 
INSERT INTO medicos (medico_id, nome, especialidade, telefone, email) VALUES(2, 'Dra. Maria Santos', 'Neurologista', '11987654322', 'maria.santos@hospital.com'), 
INSERT INTO medicos (medico_id, nome, especialidade, telefone, email) VALUES(3, 'Dr. Pedro Costa', 'Pediatra', '11987654323', 'pedro.costa@hospital.com'), 
INSERT INTO medicos (medico_id, nome, especialidade, telefone, email) VALUES(4, 'Dra. Camila Rocha', 'Ortopedista', '11987654324', 'camila.rocha@hospital.com'), 
INSERT INTO medicos (medico_id, nome, especialidade, telefone, email) VALUES(5, 'Dr. Rafael Almeida', 'Dermatologista', '11987654325', 'rafael.almeida@hospital.com'), 
INSERT INTO medicos (medico_id, nome, especialidade, telefone, email) VALUES(6, 'Dra. Julia Souza', 'Ginecologista', '11987654326', 'julia.souza@hospital.com'), 
INSERT INTO medicos (medico_id, nome, especialidade, telefone, email) VALUES(7, 'Dr. Thiago Melo', 'Psiquiatra', '11987654327', 'thiago.melo@hospital.com'), 
INSERT INTO medicos (medico_id, nome, especialidade, telefone, email) VALUES(8, 'Dra. Fernanda Moura', 'Endocrinologista', '11987654328', 'fernanda.moura@hospital.com'), 
INSERT INTO medicos (medico_id, nome, especialidade, telefone, email) VALUES(9, 'Dr. Leonardo Silva', 'Urologista', '11987654329', 'leonardo.silva@hospital.com'), 
INSERT INTO medicos (medico_id, nome, especialidade, telefone, email) VALUES(10, 'Dra. Paula Ribeiro', 'Oftalmologista', '11987654330', 'paula.ribeiro@hospital.com');

INSERT INTO consultas (consulta_id, paciente_id, medico_id, data, diagnostico) VALUES(1, 1, 1, '2024-10-27', 'Hipertensão controlada'), 
INSERT INTO consultas (consulta_id, paciente_id, medico_id, data, diagnostico) VALUES(2, 2, 2, '2024-10-27', 'Cefaleia crônica'), 
INSERT INTO consultas (consulta_id, paciente_id, medico_id, data, diagnostico) VALUES(3, 3, 3, '2024-10-26', 'Bronquite leve'), 
INSERT INTO consultas (consulta_id, paciente_id, medico_id, data, diagnostico) VALUES(4, 4, 4, '2024-10-25', 'Fratura no braço'), 
INSERT INTO consultas (consulta_id, paciente_id, medico_id, data, diagnostico) VALUES(5, 5, 5, '2024-10-24', 'Dermatite atópica'), 
INSERT INTO consultas (consulta_id, paciente_id, medico_id, data, diagnostico) VALUES(6, 6, 6, '2024-10-23', 'Infecção urinária'), 
INSERT INTO consultas (consulta_id, paciente_id, medico_id, data, diagnostico) VALUES(7, 7, 7, '2024-10-22', 'Ansiedade generalizada'), 
INSERT INTO consultas (consulta_id, paciente_id, medico_id, data, diagnostico) VALUES(8, 8, 8, '2024-10-21', 'Diabetes tipo 2'), 
INSERT INTO consultas (consulta_id, paciente_id, medico_id, data, diagnostico) VALUES(9, 9, 9, '2024-10-20', 'Cálculo renal'), 
INSERT INTO consultas (consulta_id, paciente_id, medico_id, data, diagnostico) VALUES(10, 10, 10, '2024-10-19', 'Miopia progressiva');

INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES 
(1, 1, '2024-10-27', NULL, 101), 
INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES(2, 2, '2024-10-25', '2024-10-26', 102), 
INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES(3, 3, '2024-10-20', NULL, 103), 
INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES(4, 4, '2024-10-19', NULL, 104), 
INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES(5, 5, '2024-10-18', '2024-10-21', 105), 
INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES(6, 6, '2024-10-22', NULL, 106), 
INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES(7, 7, '2024-10-23', '2024-10-24', 107), 
INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES(8, 8, '2024-10-16', NULL, 108), 
INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES(9, 9, '2024-10-15', '2024-10-17', 109), 
INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES(10, 10, '2024-10-10', NULL, 110);

INSERT INTO tratamentos (tratamento_id, internacao_id, desc_tratamento, data) VALUES 
(1, 1, 'Administração de medicação intravenosa', '2024-10-27'), 
INSERT INTO tratamentos (tratamento_id, internacao_id, desc_tratamento, data) VALUES(2, 2, 'Fisioterapia respiratória', '2024-10-26'), 
INSERT INTO tratamentos (tratamento_id, internacao_id, desc_tratamento, data) VALUES(3, 3, 'Nebulização a cada 8 horas', '2024-10-21'), 
INSERT INTO tratamentos (tratamento_id, internacao_id, desc_tratamento, data) VALUES(4, 4, 'Imobilização com gesso', '2024-10-19'), 
INSERT INTO tratamentos (tratamento_id, internacao_id, desc_tratamento, data) VALUES(5, 5, 'Aplicação de creme dermatológico', '2024-10-19'), 
INSERT INTO tratamentos (tratamento_id, internacao_id, desc_tratamento, data) VALUES(6, 6, 'Tratamento com antibiótico', '2024-10-23'), 
INSERT INTO tratamentos (tratamento_id, internacao_id, desc_tratamento, data) VALUES(7, 7, 'Terapia cognitivo-comportamental', '2024-10-23'), 
INSERT INTO tratamentos (tratamento_id, internacao_id, desc_tratamento, data) VALUES(8, 8, 'Controle de glicemia', '2024-10-21'), 
INSERT INTO tratamentos (tratamento_id, internacao_id, desc_tratamento, data) VALUES(9, 9, 'Tratamento com laser', '2024-10-20'), 
INSERT INTO tratamentos (tratamento_id, internacao_id, desc_tratamento, data) VALUES(10, 10, 'Uso de colírio diariamente', '2024-10-19');

INSERT INTO pacientes (paciente_id, nome, data_nascimento, endereco, telefone) VALUES 
(1, 'Carlos Silva', '1990-05-15', 'Rua A, 123', '11999999999');

INSERT INTO pacientes (paciente_id, nome, data_nascimento, endereco, telefone) VALUES(2, 'Ana Costa', '1985-09-22', 'Rua B, 456', '11888888888');

INSERT INTO pacientes (paciente_id, nome, data_nascimento, endereco, telefone) VALUES(3, 'Marcos Oliveira', '1978-03-10', 'Avenida C, 789', '11955555555');

INSERT INTO pacientes (paciente_id, nome, data_nascimento, endereco, telefone) VALUES(4, 'Paula Fernandes', '1992-12-30', 'Travessa D, 101', '11944444444');

INSERT INTO pacientes (paciente_id, nome, data_nascimento, endereco, telefone) VALUES(5, 'José Santos', '2000-07-17', 'Rua E, 234', '11966666666');

INSERT INTO pacientes (paciente_id, nome, data_nascimento, endereco, telefone) VALUES(6, 'Luciana Souza', '1982-02-05', 'Praça F, 567', '11977777777');

INSERT INTO pacientes (paciente_id, nome, data_nascimento, endereco, telefone) VALUES(7, 'Ricardo Almeida', '1975-06-25', 'Alameda G, 890', '11933333333');

INSERT INTO pacientes (paciente_id, nome, data_nascimento, endereco, telefone) VALUES(8, 'Fernanda Rocha', '1995-11-13', 'Rua H, 432', '11922222222');

INSERT INTO pacientes (paciente_id, nome, data_nascimento, endereco, telefone) VALUES(9, 'Juliana Farias', '1988-01-01', 'Rua I, 876', '11988888888');

INSERT INTO pacientes (paciente_id, nome, data_nascimento, endereco, telefone) VALUES(10, 'Tiago Melo', '1993-08-08', 'Avenida J, 654', '11911111111');

INSERT INTO medicos (medico_id, nome, especialidade, telefone, email) VALUES(1, 'Dr. João Lima', 'Cardiologista', '11987654321', 'joao.lima@hospital.com');

INSERT INTO medicos (medico_id, nome, especialidade, telefone, email) VALUES(2, 'Dra. Maria Santos', 'Neurologista', '11987654322', 'maria.santos@hospital.com');

INSERT INTO medicos (medico_id, nome, especialidade, telefone, email) VALUES(3, 'Dr. Pedro Costa', 'Pediatra', '11987654323', 'pedro.costa@hospital.com');

INSERT INTO medicos (medico_id, nome, especialidade, telefone, email) VALUES(4, 'Dra. Camila Rocha', 'Ortopedista', '11987654324', 'camila.rocha@hospital.com');

INSERT INTO medicos (medico_id, nome, especialidade, telefone, email) VALUES(5, 'Dr. Rafael Almeida', 'Dermatologista', '11987654325', 'rafael.almeida@hospital.com');

INSERT INTO medicos (medico_id, nome, especialidade, telefone, email) VALUES(6, 'Dra. Julia Souza', 'Ginecologista', '11987654326', 'julia.souza@hospital.com');

INSERT INTO medicos (medico_id, nome, especialidade, telefone, email) VALUES(7, 'Dr. Thiago Melo', 'Psiquiatra', '11987654327', 'thiago.melo@hospital.com');

INSERT INTO medicos (medico_id, nome, especialidade, telefone, email) VALUES(8, 'Dra. Fernanda Moura', 'Endocrinologista', '11987654328', 'fernanda.moura@hospital.com');

INSERT INTO medicos (medico_id, nome, especialidade, telefone, email) VALUES(9, 'Dr. Leonardo Silva', 'Urologista', '11987654329', 'leonardo.silva@hospital.com');

INSERT INTO medicos (medico_id, nome, especialidade, telefone, email) VALUES(10, 'Dra. Paula Ribeiro', 'Oftalmologista', '11987654330', 'paula.ribeiro@hospital.com');

INSERT INTO consultas (consulta_id, paciente_id, medico_id, data, diagnostico) VALUES(1, 1, 1, '2024-10-27', 'Hipertensão controlada');

INSERT INTO consultas (consulta_id, paciente_id, medico_id, data, diagnostico) VALUES(2, 2, 2, '2024-10-27', 'Cefaleia crônica');

INSERT INTO consultas (consulta_id, paciente_id, medico_id, data, diagnostico) VALUES(3, 3, 3, '2024-10-26', 'Bronquite leve');

INSERT INTO consultas (consulta_id, paciente_id, medico_id, data, diagnostico) VALUES(4, 4, 4, '2024-10-25', 'Fratura no braço');

INSERT INTO consultas (consulta_id, paciente_id, medico_id, data, diagnostico) VALUES(5, 5, 5, '2024-10-24', 'Dermatite atópica');

INSERT INTO consultas (consulta_id, paciente_id, medico_id, data, diagnostico) VALUES(6, 6, 6, '2024-10-23', 'Infecção urinária');

INSERT INTO consultas (consulta_id, paciente_id, medico_id, data, diagnostico) VALUES(7, 7, 7, '2024-10-22', 'Ansiedade generalizada');

INSERT INTO consultas (consulta_id, paciente_id, medico_id, data, diagnostico) VALUES(8, 8, 8, '2024-10-21', 'Diabetes tipo 2');

INSERT INTO consultas (consulta_id, paciente_id, medico_id, data, diagnostico) VALUES(9, 9, 9, '2024-10-20', 'Cálculo renal');

INSERT INTO consultas (consulta_id, paciente_id, medico_id, data, diagnostico) VALUES(10, 10, 10, '2024-10-19', 'Miopia progressiva');

INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES 
(1, 1, '2024-10-27', NULL, 101);

INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES(2, 2, '2024-10-25', '2024-10-26', 102);

INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES(3, 3, '2024-10-20', NULL, 103);

INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES(4, 4, '2024-10-19', NULL, 104);

INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES(5, 5, '2024-10-18', '2024-10-21', 105);

INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES(6, 6, '2024-10-22', NULL, 106);

INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES(7, 7, '2024-10-23', '2024-10-24', 107);

INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES(8, 8, '2024-10-16', NULL, 108);

INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES(9, 9, '2024-10-15', '2024-10-17', 109);

INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES(10, 10, '2024-10-10', NULL, 110);

INSERT INTO tratamentos (tratamento_id, internacao_id, desc_tratamento, data) VALUES 
(1, 1, 'Administração de medicação intravenosa', '2024-10-27');

INSERT INTO tratamentos (tratamento_id, internacao_id, desc_tratamento, data) VALUES(2, 2, 'Fisioterapia respiratória', '2024-10-26');

INSERT INTO tratamentos (tratamento_id, internacao_id, desc_tratamento, data) VALUES(3, 3, 'Nebulização a cada 8 horas', '2024-10-21');

INSERT INTO tratamentos (tratamento_id, internacao_id, desc_tratamento, data) VALUES(4, 4, 'Imobilização com gesso', '2024-10-19');

INSERT INTO tratamentos (tratamento_id, internacao_id, desc_tratamento, data) VALUES(5, 5, 'Aplicação de creme dermatológico', '2024-10-19');

INSERT INTO tratamentos (tratamento_id, internacao_id, desc_tratamento, data) VALUES(6, 6, 'Tratamento com antibiótico', '2024-10-23');

INSERT INTO tratamentos (tratamento_id, internacao_id, desc_tratamento, data) VALUES(7, 7, 'Terapia cognitivo-comportamental', '2024-10-23');

INSERT INTO tratamentos (tratamento_id, internacao_id, desc_tratamento, data) VALUES(8, 8, 'Controle de glicemia', '2024-10-21');

INSERT INTO tratamentos (tratamento_id, internacao_id, desc_tratamento, data) VALUES(9, 9, 'Tratamento com laser', '2024-10-20');

INSERT INTO tratamentos (tratamento_id, internacao_id, desc_tratamento, data) VALUES(10, 10, 'Uso de colírio diariamente', '2024-10-19');

drop all;

drop ;

CREATE TABLE tratamentos(  
tratamento_id int, 
internacao_id int, 
desc_tratamento varchar(50), 
data_tratamento date, 
CONSTRAINT pk_TRATAMENTOS PRIMARY KEY (tratamento_id),  
CONSTRAINT fk_internacao_id FOREIGN KEY (internacao_id) REFERENCES internacoes (internacao_id));

drop table tratamentos;

drop table consultas;

CREATE TABLE tratamentos(  
tratamento_id int, 
internacao_id int, 
desc_tratamento varchar(50), 
data_tratamento date, 
CONSTRAINT pk_TRATAMENTOS PRIMARY KEY (tratamento_id),  
CONSTRAINT fk_internacao_id FOREIGN KEY (internacao_id) REFERENCES internacoes (internacao_id));

CREATE TABLE internacoes( 
internacao_id int, 
paciente_id int, 
data_entrada date, 
data_saida date, 
quarto int, 
CONSTRAINT pk_INTERNACOES PRIMARY KEY (internacao_id),  
CONSTRAINT fk_paciente_id FOREIGN KEY (paciente_id) REFERENCES pacientes (paciente_id));

CREATE TABLE consultas(  
consulta_id int, 
paciente_id int, 
medico_id int, 
data_consulta date, 
diagnostico varchar(50), 
CONSTRAINT pk_consultas PRIMARY KEY (consulta_id),  
CONSTRAINT fk_paciente_id FOREIGN KEY (paciente_id) REFERENCES pacientes (paciente_id),  
CONSTRAINT fk_medico_id FOREIGN KEY (medico_id) REFERENCES medicos (medico_id)  
);

drop table consultas 
drop table internacoes;

drop table consultas;

drop table internacoes;

drop table internacoes;

drop table tratametos;

drop table tratametos;

drop table internacoes;

drop table consultas;

CREATE TABLE consultas(  
consulta_id int, 
paciente_id int, 
medico_id int, 
data_consulta date, 
diagnostico varchar(50), 
CONSTRAINT pk_consultas PRIMARY KEY (consulta_id),  
CONSTRAINT fk_paciente_id FOREIGN KEY (paciente_id) REFERENCES pacientes (paciente_id),  
CONSTRAINT fk_medico_id FOREIGN KEY (medico_id) REFERENCES medicos (medico_id)  
);

CREATE TABLE consultas(  
consulta_id int, 
paciente_id int, 
medico_id int, 
data_consulta date, 
diagnostico varchar(50), 
CONSTRAINT pk_consultas PRIMARY KEY (consulta_id),  
CONSTRAINT fk_paciente_id FOREIGN KEY (paciente_id) REFERENCES pacientes (paciente_id),  
CONSTRAINT fk_medico_id FOREIGN KEY (medico_id) REFERENCES medicos (medico_id)  
);

CREATE TABLE internacoes( 
internacao_id int, 
paciente_id int, 
data_entrada date, 
data_saida date, 
quarto int, 
CONSTRAINT pk_INTERNACOES PRIMARY KEY (internacao_id),  
CONSTRAINT fk_paciente_id FOREIGN KEY (paciente_id) REFERENCES pacientes (paciente_id));

CREATE TABLE tratamentos(  
tratamento_id int, 
internacao_id int, 
desc_tratamento varchar(50), 
data_tratamento date, 
CONSTRAINT pk_TRATAMENTOS PRIMARY KEY (tratamento_id),  
CONSTRAINT fk_internacao_id FOREIGN KEY (internacao_id) REFERENCES internacoes (internacao_id));

INSERT INTO pacientes (paciente_id, nome, data_nascimento, endereco, telefone) VALUES 
(1, 'Carlos Silva', '1990-05-15', 'Rua A, 123', '11999999999');

INSERT INTO pacientes (paciente_id, nome, data_nascimento, endereco, telefone) VALUES(2, 'Ana Costa', '1985-09-22', 'Rua B, 456', '11888888888');

INSERT INTO pacientes (paciente_id, nome, data_nascimento, endereco, telefone) VALUES(3, 'Marcos Oliveira', '1978-03-10', 'Avenida C, 789', '11955555555');

INSERT INTO pacientes (paciente_id, nome, data_nascimento, endereco, telefone) VALUES(4, 'Paula Fernandes', '1992-12-30', 'Travessa D, 101', '11944444444');

INSERT INTO pacientes (paciente_id, nome, data_nascimento, endereco, telefone) VALUES(5, 'José Santos', '2000-07-17', 'Rua E, 234', '11966666666');

INSERT INTO pacientes (paciente_id, nome, data_nascimento, endereco, telefone) VALUES(6, 'Luciana Souza', '1982-02-05', 'Praça F, 567', '11977777777');

INSERT INTO pacientes (paciente_id, nome, data_nascimento, endereco, telefone) VALUES(7, 'Ricardo Almeida', '1975-06-25', 'Alameda G, 890', '11933333333');

INSERT INTO pacientes (paciente_id, nome, data_nascimento, endereco, telefone) VALUES(8, 'Fernanda Rocha', '1995-11-13', 'Rua H, 432', '11922222222');

INSERT INTO pacientes (paciente_id, nome, data_nascimento, endereco, telefone) VALUES(9, 'Juliana Farias', '1988-01-01', 'Rua I, 876', '11988888888');

INSERT INTO pacientes (paciente_id, nome, data_nascimento, endereco, telefone) VALUES(10, 'Tiago Melo', '1993-08-08', 'Avenida J, 654', '11911111111');

INSERT INTO medicos (medico_id, nome, especialidade, telefone, email) VALUES(1, 'Dr. João Lima', 'Cardiologista', '11987654321', 'joao.lima@hospital.com');

INSERT INTO medicos (medico_id, nome, especialidade, telefone, email) VALUES(2, 'Dra. Maria Santos', 'Neurologista', '11987654322', 'maria.santos@hospital.com');

INSERT INTO medicos (medico_id, nome, especialidade, telefone, email) VALUES(3, 'Dr. Pedro Costa', 'Pediatra', '11987654323', 'pedro.costa@hospital.com');

INSERT INTO medicos (medico_id, nome, especialidade, telefone, email) VALUES(4, 'Dra. Camila Rocha', 'Ortopedista', '11987654324', 'camila.rocha@hospital.com');

INSERT INTO medicos (medico_id, nome, especialidade, telefone, email) VALUES(5, 'Dr. Rafael Almeida', 'Dermatologista', '11987654325', 'rafael.almeida@hospital.com');

INSERT INTO medicos (medico_id, nome, especialidade, telefone, email) VALUES(6, 'Dra. Julia Souza', 'Ginecologista', '11987654326', 'julia.souza@hospital.com');

INSERT INTO medicos (medico_id, nome, especialidade, telefone, email) VALUES(7, 'Dr. Thiago Melo', 'Psiquiatra', '11987654327', 'thiago.melo@hospital.com');

INSERT INTO medicos (medico_id, nome, especialidade, telefone, email) VALUES(8, 'Dra. Fernanda Moura', 'Endocrinologista', '11987654328', 'fernanda.moura@hospital.com');

INSERT INTO medicos (medico_id, nome, especialidade, telefone, email) VALUES(9, 'Dr. Leonardo Silva', 'Urologista', '11987654329', 'leonardo.silva@hospital.com');

INSERT INTO medicos (medico_id, nome, especialidade, telefone, email) VALUES(10, 'Dra. Paula Ribeiro', 'Oftalmologista', '11987654330', 'paula.ribeiro@hospital.com');

INSERT INTO consultas (consulta_id, paciente_id, medico_id, data_consulta, diagnostico) VALUES(1, 1, 1, '2024-10-27', 'Hipertensão controlada');

INSERT INTO consultas (consulta_id, paciente_id, medico_id, data_consulta, diagnostico) VALUES(2, 2, 2, '2024-10-27', 'Cefaleia crônica');

INSERT INTO consultas (consulta_id, paciente_id, medico_id, data_consulta, diagnostico) VALUES(3, 3, 3, '2024-10-26', 'Bronquite leve');

INSERT INTO consultas (consulta_id, paciente_id, medico_id, data_consulta, diagnostico) VALUES(4, 4, 4, '2024-10-25', 'Fratura no braço');

INSERT INTO consultas (consulta_id, paciente_id, medico_id, data_consulta, diagnostico) VALUES(5, 5, 5, '2024-10-24', 'Dermatite atópica');

INSERT INTO consultas (consulta_id, paciente_id, medico_id, data_consulta, diagnostico) VALUES(6, 6, 6, '2024-10-23', 'Infecção urinária');

INSERT INTO consultas (consulta_id, paciente_id, medico_id, data_consulta, diagnostico) VALUES(7, 7, 7, '2024-10-22', 'Ansiedade generalizada');

INSERT INTO consultas (consulta_id, paciente_id, medico_id, data_consulta, diagnostico) VALUES(8, 8, 8, '2024-10-21', 'Diabetes tipo 2');

INSERT INTO consultas (consulta_id, paciente_id, medico_id, data_consulta, diagnostico) VALUES(9, 9, 9, '2024-10-20', 'Cálculo renal');

INSERT INTO consultas (consulta_id, paciente_id, medico_id, data_consulta, diagnostico) VALUES(10, 10, 10, '2024-10-19', 'Miopia progressiva');

INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES 
(1, 1, '2024-10-27', NULL, 101);

INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES(2, 2, '2024-10-25', '2024-10-26', 102);

INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES(3, 3, '2024-10-20', NULL, 103);

INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES(4, 4, '2024-10-19', NULL, 104);

INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES(5, 5, '2024-10-18', '2024-10-21', 105);

INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES(6, 6, '2024-10-22', NULL, 106);

INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES(7, 7, '2024-10-23', '2024-10-24', 107);

INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES(8, 8, '2024-10-16', NULL, 108);

INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES(9, 9, '2024-10-15', '2024-10-17', 109);

INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES(10, 10, '2024-10-10', NULL, 110);

INSERT INTO tratamentos (tratamento_id, internacao_id, desc_tratamento, data_tratamento) VALUES 
(1, 1, 'Administração de medicação intravenosa', '2024-10-27');

INSERT INTO tratamentos (tratamento_id, internacao_id, desc_tratamento, data_tratamento) VALUES(2, 2, 'Fisioterapia respiratória', '2024-10-26');

INSERT INTO tratamentos (tratamento_id, internacao_id, desc_tratamento, data_tratamento) VALUES(3, 3, 'Nebulização a cada 8 horas', '2024-10-21');

INSERT INTO tratamentos (tratamento_id, internacao_id, desc_tratamento, data_tratamento) VALUES(4, 4, 'Imobilização com gesso', '2024-10-19');

INSERT INTO tratamentos (tratamento_id, internacao_id, desc_tratamento, data_tratamento) VALUES(5, 5, 'Aplicação de creme dermatológico', '2024-10-19');

INSERT INTO tratamentos (tratamento_id, internacao_id, desc_tratamento, data_tratamento) VALUES(6, 6, 'Tratamento com antibiótico', '2024-10-23');

INSERT INTO tratamentos (tratamento_id, internacao_id, desc_tratamento, data_tratamento) VALUES(7, 7, 'Terapia cognitivo-comportamental', '2024-10-23');

INSERT INTO tratamentos (tratamento_id, internacao_id, desc_tratamento, data_tratamento) VALUES(8, 8, 'Controle de glicemia', '2024-10-21');

INSERT INTO tratamentos (tratamento_id, internacao_id, desc_tratamento, data_tratamento) VALUES(9, 9, 'Tratamento com laser', '2024-10-20');

INSERT INTO tratamentos (tratamento_id, internacao_id, desc_tratamento, data_tratamento) VALUES(10, 10, 'Uso de colírio diariamente', '2024-10-19');

CREATE TABLE internacoes( 
internacao_id int, 
paciente_id int, 
data_entrada date, 
data_saida date, 
quarto int, 
CONSTRAINT pk_INTERNACOES PRIMARY KEY (internacao_id),  
CONSTRAINT fk_paciente_id FOREIGN KEY (paciente_id) REFERENCES pacientes (paciente_id));

drop table internacoes;

drop table tratametos;

drop table tratamentos;

drop table internacoes;

drop table consultas;

CREATE TABLE consultas(  
consulta_id int, 
paciente_id int, 
medico_id int, 
data_consulta date, 
diagnostico varchar(50), 
CONSTRAINT pk_consultas PRIMARY KEY (consulta_id),  
CONSTRAINT fk_paciente_id FOREIGN KEY (paciente_id) REFERENCES pacientes (paciente_id),  
CONSTRAINT fk_medico_id FOREIGN KEY (medico_id) REFERENCES medicos (medico_id)  
);

CREATE TABLE internacoes( 
internacao_id int, 
paciente_id int, 
data_entrada date, 
data_saida date, 
quarto int, 
CONSTRAINT pk_INTERNACOES PRIMARY KEY (internacao_id),  
CONSTRAINT fk_paciente_id FOREIGN KEY (paciente_id) REFERENCES pacientes (paciente_id));

CREATE TABLE tratamentos(  
tratamento_id int, 
internacao_id int, 
desc_tratamento varchar(50), 
data_tratamento date, 
CONSTRAINT pk_TRATAMENTOS PRIMARY KEY (tratamento_id),  
CONSTRAINT fk_internacao_id FOREIGN KEY (internacao_id) REFERENCES internacoes (internacao_id));

CREATE TABLE internacoes( 
internacao_id int, 
paciente_id int, 
data_entrada date, 
data_saida date, 
quarto int, 
CONSTRAINT pk_INTERNACOES PRIMARY KEY (internacao_id),  
CONSTRAINT fk_paciente_id_int FOREIGN KEY (paciente_id) REFERENCES pacientes (paciente_id));

CREATE TABLE tratamentos(  
tratamento_id int, 
internacao_id int, 
desc_tratamento varchar(50), 
data_tratamento date, 
CONSTRAINT pk_TRATAMENTOS PRIMARY KEY (tratamento_id),  
CONSTRAINT fk_internacao_id FOREIGN KEY (internacao_id) REFERENCES internacoes (internacao_id));

INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES 
(1, 1, '2024-10-27', NULL, 101);

INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES(2, 2, '2024-10-25', '2024-10-26', 102);

INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES(3, 3, '2024-10-20', NULL, 103);

INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES(4, 4, '2024-10-19', NULL, 104);

INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES(5, 5, '2024-10-18', '2024-10-21', 105);

INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES(6, 6, '2024-10-22', NULL, 106);

INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES(7, 7, '2024-10-23', '2024-10-24', 107);

INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES(8, 8, '2024-10-16', NULL, 108);

INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES(9, 9, '2024-10-15', '2024-10-17', 109);

INSERT INTO internacoes (internacao_id, paciente_id, data_entrada, data_saida, quarto) VALUES(10, 10, '2024-10-10', NULL, 110);

CREATE TABLE HistoricoMovimentacao( 
 MedicamentoID int,  
 TipoMovimento varchar(10),  
 Quantidade int,  
 DataMovimento date, 
 CONSTRAINT pk_HistoricoMov PRIMARY KEY (MedicamentoID) 
);

