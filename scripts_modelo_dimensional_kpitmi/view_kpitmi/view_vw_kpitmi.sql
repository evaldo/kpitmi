CREATE OR REPLACE VIEW kpitmi.vw_kpitmi
 AS
SELECT tmi.sk_tempo_medio_internacao as ID_KPI
     , cid.cd_cid as CID
	 , fe.ds_faixa_etaria as FaixaEtaria
	 , mo.nm_municipio as MunicipioDeOrigem	
	 , tp.ds_mes as TempoPorMes	
	 , tp.nu_ano as TempoPorAno	
	 , tmi.tp_medio_internacao as TempoMedioDeInternacao
FROM kpitmi.ftempomediodeinternacao tmi
   , kpitmi.dcid cid
   , kpitmi.dfaixaetaria fe
   , kpitmi.dmunicipiodeorigem mo
   , kpitmi.dtempo tp
WHERE tmi.id_d_cid = cid.id_d_cid
  and tmi.id_d_faixa_etaria = fe.id_d_faixa_etaria
  and tmi.id_d_municipio = mo.id_d_municipio
  and tmi.id_d_tempo = tp.id_d_tempo;

ALTER TABLE kpitmi.vw_kpitmi
    OWNER TO postgres;
COMMENT ON VIEW kpitmi.vw_kpitmi
    IS 'View de leitura dos dados sobre tempo médio de internação.';