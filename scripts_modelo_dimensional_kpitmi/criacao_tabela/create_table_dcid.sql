-- Table: kpitmi.dcid

-- DROP TABLE kpitmi.dcid;

CREATE TABLE kpitmi.dcid
(
    id_d_cid integer NOT NULL,
    cd_cid character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT pk_dcid PRIMARY KEY (id_d_cid)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE kpitmi.dcid
    OWNER to postgres;

COMMENT ON TABLE kpitmi.dcid
    IS 'Tabela de dimensão de Grupos de CID (Classificação Internacional de Doenças)';