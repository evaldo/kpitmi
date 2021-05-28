-- Table: kpitmi.dfaixaetaria

-- DROP TABLE kpitmi.dfaixaetaria;

CREATE TABLE kpitmi.dfaixaetaria
(
    id_d_faixa_etaria integer NOT NULL,
    ds_faixa_etaria character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT pk_dfaixaetaria PRIMARY KEY (id_d_faixa_etaria)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE kpitmi.dfaixaetaria
    OWNER to postgres;

COMMENT ON TABLE kpitmi.dfaixaetaria
    IS 'Tabela de Dimensão de Faixa Etária.';