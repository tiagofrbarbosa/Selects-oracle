****************** DOC PRONTUARIO *******************
SELECT * FROM DOCUMENTO                        -- DOCUMENTOS DE PRONTUARIOS
SELECT * FROM REGISTRO_DOCUMENTO               -- QUANTIDADE DE VEZES QUE FOI PREENCHIDO
SELECT * FROM REGISTRO_RESPOSTA                -- RESPOSTA DO DOCUMENTO
SELECT * FROM VDIC_RESPOSTA_DOCUMENTO          -- MOSTRA QUEM PREENCHEU O DOCUMENTO E A DATA
SELECT * FROM VDIC_ITEM_RESPOSTA_DOCUMENTO     -- MOSTRA AS RESPOSTAS PREENCHIDAS NOS DOCUMENTOS
SELECT * FROM DOCUMENTO_OBRIGATORIO            -- ITEM DE PRESCRI��O QUE O DOCUMENTO � OBRIGAT�RIO
SELECT * FROM DOCUMENTO_ACAO                   -- A��O QUE O DOCUMENTO REALIZA NO BANCO QUANDO � PREENCHIDO
SELECT * FROM GRUPO_PERGUNTA                   -- MOSTRA AS PERGUNTAS DE CADA DOCUMENTO
SELECT * FROM GRUPO_PERGUNTA_DOC               -- MOSTRA AS CONFIGURA��ES DA PERGUNTA
SELECT * FROM PERGUNTA_DOC                     -- NOME DA PERGUNTA + IDENTIFICA��O