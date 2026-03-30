-- Criar tabela alerta (baseado no sistema Ponto Seguro)
CREATE TABLE alerta (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    tipo TEXT NOT NULL,                -- ex: assalto, emergência, perigo
    mensagem TEXT,                     -- descrição do alerta
    latitude REAL,                     -- localização
    longitude REAL,
    data_hora DATETIME DEFAULT CURRENT_TIMESTAMP,
    status TEXT                        -- ex: enviado, atendido
);

-- Inserir registros (simulando uso do app)
INSERT INTO alerta (tipo, mensagem, latitude, longitude, status)
VALUES ('SOS', 'Botão de emergência acionado', -8.05, -34.90, 'enviado');

INSERT INTO alerta (tipo, mensagem, latitude, longitude, status)
VALUES ('Assalto', 'Usuário relatou assalto próximo', -8.06, -34.91, 'enviado');

INSERT INTO alerta (tipo, mensagem, latitude, longitude, status)
VALUES ('Perigo', 'Movimentação suspeita detectada', -8.07, -34.92, 'atendido');

-- Listar registros (READ)
SELECT * FROM alerta;
-- Atualizar status (quando autoridade responde)
UPDATE alerta 
SET status = 'atendido'
WHERE id = 1;

-- Deletar alerta
DELETE FROM alerta 
WHERE id = 2;
