SELECT A.CD_ATENDIMENTO,
       A.CD_PACIENTE,
       TO_CHAR(PM.DT_PRE_MED,'DD/MM/YYYY') DT_SOLICITADO,
       P.NM_PRESTADOR,
       E.DS_ESPECIALID,
       TP.DS_TIP_PRESC
FROM PRE_MED PM,
     ITPRE_MED ITPM,
     TIP_PRESC TP,
     ATENDIME A,
     PRESTADOR P,
     ESPECIALID E
WHERE 
     PM.DT_PRE_MED BETWEEN '01-01-2015' AND '01-07-2015'
     AND PM.CD_PRE_MED = ITPM.CD_PRE_MED
     AND A.CD_ATENDIMENTO = PM.CD_ATENDIMENTO
     AND ITPM.CD_TIP_PRESC = TP.CD_TIP_PRESC
     AND A.CD_PRESTADOR = P.CD_PRESTADOR
     AND E.CD_ESPECIALID = A.CD_ESPECIALID
     AND A.CD_MULTI_EMPRESA = 1
     AND TP.CD_TIP_PRESC = 32830
     ORDER BY A.CD_ATENDIMENTO