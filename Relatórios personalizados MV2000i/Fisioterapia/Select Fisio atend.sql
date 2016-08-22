--1º Atendimento
SELECT PRES.NM_PRESTADOR,
       A.CD_ATENDIMENTO,
       A.CD_PACIENTE,
       To_Char(A.DT_ATENDIMENTO,'DD/MM/YYYY'),
       P.NM_PACIENTE,
       RP.DS_RESPOSTA,
       LP.DS_LOC_PROCED
       FROM ATENDIME A,
            PACIENTE P,
            VDIC_RESPOSTA_DOCUMENTO VRD,
            REGISTRO_RESPOSTA RP,
            LOC_PROCED LP,
            PRESTADOR PRES
       WHERE A.DT_ATENDIMENTO BETWEEN '01-01-2014' AND '30-06-2014'
       AND A.CD_ATENDIMENTO = VRD.ATENDIMENTO
       AND VRD.REGISTRO_DOCUMENTO = RP.CD_REGISTRO_DOCUMENTO
       AND A.CD_PACIENTE = P.CD_PACIENTE
       AND A.CD_ESPECIALID = 55
       AND A.CD_TIPO_INTERNACAO = 11
       AND RP.CD_PERGUNTA_DOC = 6247
       AND A.CD_PRESTADOR = PRES.CD_PRESTADOR
       AND A.CD_LOC_PROCED = LP.CD_LOC_PROCED
       ORDER BY A.CD_ATENDIMENTO

--Lista de altas
SELECT A.CD_ATENDIMENTO,
       PRES.NM_PRESTADOR,
       P.CD_PACIENTE,
       P.NM_PACIENTE,
       A.DT_ATENDIMENTO,
       TP.DS_TIP_RES,
       A.DT_ALTA_MEDICA,
       VDIC.NR_FAT
FROM ATENDIME A, PACIENTE P, VDIC_CADASTRAR_PEDIDO_IMAGEM VDIC, TIP_RES TP,PRESTADOR PRES
WHERE A.CD_PACIENTE = P.CD_PACIENTE
AND A.CD_PRESTADOR = PRES.CD_PRESTADOR
AND VDIC.ATENDIMENTO = A.CD_ATENDIMENTO
AND TP.CD_TIP_RES = A.CD_TIP_RES
AND A.DT_ATENDIMENTO BETWEEN '01-01-2014' AND '30-06-2014'
AND VDIC.SETOR_EXECUTANTE = 25
AND A.CD_MULTI_EMPRESA = 1