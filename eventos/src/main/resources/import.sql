-- =========================================================
-- 1. CATEGORIA (5 registros)
-- =========================================================
INSERT INTO categoria (id, nome, descricao) VALUES (1, 'Tecnologia', 'Eventos sobre inovação, software e novas tecnologias');
INSERT INTO categoria (id, nome, descricao) VALUES (2, 'Negócios', 'Eventos voltados para empreendedorismo e gestão');
INSERT INTO categoria (id, nome, descricao) VALUES (3, 'Educação', 'Eventos acadêmicos, workshops e cursos');
INSERT INTO categoria (id, nome, descricao) VALUES (4, 'Saúde', 'Eventos sobre bem-estar, medicina e qualidade de vida');
INSERT INTO categoria (id, nome, descricao) VALUES (5, 'Cultura', 'Eventos culturais, artísticos e de entretenimento');

-- =========================================================
-- 2. LOCAL (5 registros)
-- =========================================================
INSERT INTO local (id, nome, endereco, capacidade) VALUES (1, 'Centro de Convenções Ourinhos', 'Av. Vitalina Marcusso, 1500 - Ourinhos/SP', 500);
INSERT INTO local (id, nome, endereco, capacidade) VALUES (2, 'Auditório UNIFIO', 'Rua Coronel José Luiz de Melo Franco, 1341 - Ourinhos/SP', 200);
INSERT INTO local (id, nome, endereco, capacidade) VALUES (3, 'Teatro Municipal', 'Praça Rui Barbosa, 100 - Ourinhos/SP', 350);
INSERT INTO local (id, nome, endereco, capacidade) VALUES (4, 'Espaço Eventos SP', 'Av. Paulista, 900 - São Paulo/SP', 800);
INSERT INTO local (id, nome, endereco, capacidade) VALUES (5, 'Hotel Plaza Convention', 'Rua das Palmeiras, 45 - Bauru/SP', 300);

-- =========================================================
-- 3. PALESTRANTE (5 registros)
-- =========================================================
INSERT INTO palestrante (id, nome, mini_bio, email) VALUES (1, 'Carlos Andrade', 'Engenheiro de software com 15 anos de experiência em sistemas distribuídos', 'carlos.andrade@example.com');
INSERT INTO palestrante (id, nome, mini_bio, email) VALUES (2, 'Fernanda Lima', 'Consultora de negócios especializada em startups e inovação', 'fernanda.lima@example.com');
INSERT INTO palestrante (id, nome, mini_bio, email) VALUES (3, 'Ricardo Souza', 'Professor universitário e pesquisador na área de educação digital', 'ricardo.souza@example.com');
INSERT INTO palestrante (id, nome, mini_bio, email) VALUES (4, 'Juliana Prado', 'Médica e palestrante em temas de saúde e qualidade de vida', 'juliana.prado@example.com');
INSERT INTO palestrante (id, nome, mini_bio, email) VALUES (5, 'Marcos Vinícius', 'Ator e produtor cultural com atuação em festivais nacionais', 'marcos.vinicius@example.com');

-- =========================================================
-- 4. PARTICIPANTE (5 registros)
-- =========================================================
INSERT INTO participante (id, nome, email, telefone) VALUES (1, 'Ana Beatriz Silva', 'ana.silva@example.com', '(14) 99123-4567');
INSERT INTO participante (id, nome, email, telefone) VALUES (2, 'Bruno Costa', 'bruno.costa@example.com', '(14) 99234-5678');
INSERT INTO participante (id, nome, email, telefone) VALUES (3, 'Camila Rodrigues', 'camila.rodrigues@example.com', '(14) 99345-6789');
INSERT INTO participante (id, nome, email, telefone) VALUES (4, 'Diego Ferreira', 'diego.ferreira@example.com', '(14) 99456-7890');
INSERT INTO participante (id, nome, email, telefone) VALUES (5, 'Elaine Martins', 'elaine.martins@example.com', '(14) 99567-8901');

-- =========================================================
-- 5. EVENTO (5 registros)
-- =========================================================
INSERT INTO evento (id, nome, descricao, data_inicio, data_fim, capacidade, status, categoria_id, local_id, palestrante_id)
VALUES (1, 'Semana de Tecnologia 2026', 'Evento com palestras sobre inovação e novas tecnologias', '2026-10-05 09:00:00', '2026-10-05 18:00:00', 500, 'AGENDADO', 1, 1, 1);

INSERT INTO evento (id, nome, descricao, data_inicio, data_fim, capacidade, status, categoria_id, local_id, palestrante_id)
VALUES (2, 'Fórum de Empreendedorismo', 'Encontro de empreendedores e investidores da região', '2026-10-12 08:30:00', '2026-10-12 17:00:00', 200, 'AGENDADO', 2, 2, 2);

INSERT INTO evento (id, nome, descricao, data_inicio, data_fim, capacidade, status, categoria_id, local_id, palestrante_id)
VALUES (3, 'Congresso de Educação Digital', 'Discussões sobre tecnologia aplicada ao ensino', '2026-11-03 09:00:00', '2026-11-04 17:00:00', 350, 'AGENDADO', 3, 3, 3);

INSERT INTO evento (id, nome, descricao, data_inicio, data_fim, capacidade, status, categoria_id, local_id, palestrante_id)
VALUES (4, 'Simpósio de Saúde e Bem-Estar', 'Palestras sobre saúde preventiva e qualidade de vida', '2026-09-20 08:00:00', '2026-09-20 16:00:00', 800, 'AGENDADO', 4, 4, 4);

INSERT INTO evento (id, nome, descricao, data_inicio, data_fim, capacidade, status, categoria_id, local_id, palestrante_id)
VALUES (5, 'Festival Cultural de Inverno', 'Apresentações artísticas e culturais', '2026-07-15 19:00:00', '2026-07-16 23:00:00', 300, 'FINALIZADO', 5, 5, 5);

-- =========================================================
-- 6. INSCRICAO (5 registros)
-- =========================================================
INSERT INTO inscricao (id, data_inscricao, status, evento_id, participante_id) VALUES (1, '2026-08-01 10:15:00', 'CONFIRMADA', 1, 1);
INSERT INTO inscricao (id, data_inscricao, status, evento_id, participante_id) VALUES (2, '2026-08-05 14:30:00', 'CONFIRMADA', 2, 2);
INSERT INTO inscricao (id, data_inscricao, status, evento_id, participante_id) VALUES (3, '2026-08-10 09:45:00', 'PENDENTE', 3, 3);
INSERT INTO inscricao (id, data_inscricao, status, evento_id, participante_id) VALUES (4, '2026-08-15 16:20:00', 'CONFIRMADA', 4, 4);
INSERT INTO inscricao (id, data_inscricao, status, evento_id, participante_id) VALUES (5, '2026-07-01 11:00:00', 'CANCELADA', 5, 5);
