-- Table: kpitmi.dmunicipiodeorigem

-- DROP TABLE kpitmi.dmunicipiodeorigem;

CREATE TABLE kpitmi.dmunicipiodeorigem
(
    id_d_municipio integer NOT NULL,
    nm_municipio character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT pk_dmunicipiodeorigem PRIMARY KEY (id_d_municipio)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE kpitmi.dmunicipiodeorigem
    OWNER to postgres;

COMMENT ON TABLE kpitmi.dmunicipiodeorigem
    IS 'Tabela de Dimensão de Município de Origem';