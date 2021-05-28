-- Table: kpitmi.ftempomediodeinternacao

-- DROP TABLE kpitmi.ftempomediodeinternacao;

CREATE TABLE kpitmi.ftempomediodeinternacao
(
    sk_tempo_medio_internacao integer NOT NULL,
    id_d_cid integer NOT NULL,
    id_d_faixa_etaria integer NOT NULL,
    id_d_municipio integer NOT NULL,
    id_d_tempo integer NOT NULL,
    nu_pcnt_admtd_periodo integer NOT NULL,
    nu_alta_pcnt_periodo integer NOT NULL,
    tp_medio_internacao numeric(10,2) NOT NULL,
    CONSTRAINT pk_ftempomediodeinternacao PRIMARY KEY (sk_tempo_medio_internacao),
    CONSTRAINT fk_cid_tmi FOREIGN KEY (id_d_cid)
        REFERENCES kpitmi.dcid (id_d_cid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_faixaetaria_tmi FOREIGN KEY (id_d_faixa_etaria)
        REFERENCES kpitmi.dfaixaetaria (id_d_faixa_etaria) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_municipio_tmi FOREIGN KEY (id_d_municipio)
        REFERENCES kpitmi.dmunicipiodeorigem (id_d_municipio) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_tempo_tmi FOREIGN KEY (id_d_tempo)
        REFERENCES kpitmi.dtempo (id_d_tempo) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE kpitmi.ftempomediodeinternacao
    OWNER to postgres;

COMMENT ON TABLE kpitmi.ftempomediodeinternacao
    IS 'Tabela Fato do Tempo Médio de Internação';

COMMENT ON CONSTRAINT fk_cid_tmi ON kpitmi.ftempomediodeinternacao
    IS 'Foreign Key da tabela DCID para tabela Fato de Tempo Medio de Internacao';
COMMENT ON CONSTRAINT fk_faixaetaria_tmi ON kpitmi.ftempomediodeinternacao
    IS 'Foreign Key da tabela de dimensão de Faixa Etária para a tabela Fato de Tempo Médio de Internação';
COMMENT ON CONSTRAINT fk_municipio_tmi ON kpitmi.ftempomediodeinternacao
    IS 'Foreign Key da tabela de Dimensão Município para a tabela Fato de Tempo Médio de Internação.';
COMMENT ON CONSTRAINT fk_tempo_tmi ON kpitmi.ftempomediodeinternacao
    IS 'Foreign Key da tabela de Dimensão Tempo para a tabela Fato de Tempo Médio de Internação.';