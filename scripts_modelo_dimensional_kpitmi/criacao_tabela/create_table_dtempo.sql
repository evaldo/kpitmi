-- Table: kpitmi.dtempo

-- DROP TABLE kpitmi.dtempo;

CREATE TABLE kpitmi.dtempo
(
    id_d_tempo integer NOT NULL,
    dt_tempo date NOT NULL,
    ds_mes character varying(255) COLLATE pg_catalog."default" NOT NULL,
    nu_ano integer NOT NULL,
    ds_bimestre character varying(255) COLLATE pg_catalog."default" NOT NULL,
    ds_trimestre character varying(255) COLLATE pg_catalog."default" NOT NULL,
    ds_semestre character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT pk_dtempo PRIMARY KEY (id_d_tempo)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE kpitmi.dtempo
    OWNER to postgres;

COMMENT ON TABLE kpitmi.dtempo
    IS 'Tabela de Dimensão de Tempo';