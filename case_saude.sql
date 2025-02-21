WITH pacientes AS (
    SELECT 
        id_paciente,
        CASE sexo
            WHEN 'male' THEN 'Masculino'
            WHEN 'female' THEN 'Feminino'
            ELSE 'Sem Informação'
        END AS sexo,
        
        CASE 
            WHEN CAST(obito AS STRING) IN ('True', 'true') THEN '0'
            WHEN CAST(obito AS STRING) IN ('False', 'false') THEN '1'
            ELSE obito
        END AS obito,
        
        bairro,
        
        CASE 
            WHEN raca_cor = 'Não' THEN 'Sem Informação'
            ELSE raca_cor
        END AS raca_cor,
        
        ocupacao,
        
        CASE 
            WHEN religiao IN ('ESB ALMIRANTE', '10 EAP 01', 'Acomp. Cresc. e Desenv. da Criança', 
                              'ORQUIDEA', 'Sim', 'Não', 'Outra') 
            THEN 'Sem Informação'
            ELSE religiao
        END AS religiao,

        CASE 
            WHEN CAST(luz_eletrica AS STRING) IN ('True', 'true') THEN '0'
            WHEN CAST(luz_eletrica AS STRING) IN ('False', 'false') THEN '1'
            ELSE luz_eletrica
        END AS luz_eletrica,

        DATE(data_cadastro) AS data_cadastro,
        escolaridade,
        nacionalidade,

        CASE 
            WHEN renda_familiar IN ('Manhã', 'Internet') THEN 'Sem Informação'
            ELSE renda_familiar
        END AS renda_familiar,

        data_nascimento,

        CASE 
            WHEN CAST(em_situacao_de_rua AS STRING) IN ('False') THEN '1'
            ELSE em_situacao_de_rua
        END AS em_situacao_de_rua,

        frequenta_escola,

        CASE 
            WHEN TRIM(
                REPLACE(
                    REGEXP_REPLACE(
                        REGEXP_REPLACE(meios_transporte, r"[\"\\[\]']", ''), 
                        r",\s*", ", "
                    ), 'u00d4', 'Ô'
                )
            ) = '' THEN 'Sem informação'
            ELSE REPLACE(
                REGEXP_REPLACE(
                    REGEXP_REPLACE(meios_transporte, r"[\"\\[\]']", ''), 
                    r",\s*", ", "
                ), 'u00d4', 'Ô'
            )
        END AS meios_transporte,

        CASE 
            WHEN TRIM(
                REGEXP_REPLACE(
                    REGEXP_REPLACE(doencas_condicoes, r"[\"\\[\]']", ''), 
                    r",\s*", ", "
                )
            ) = '' THEN 'Sem informação'
            ELSE 
                REPLACE(
                    REPLACE(
                        REPLACE(
                            REPLACE(
                                REPLACE(
                                    REPLACE(
                                        REPLACE(
                                            REPLACE(
                                                REGEXP_REPLACE(
                                                    REGEXP_REPLACE(doencas_condicoes, r"[\"\\[\]']", ''), 
                                                    r",\s*", ", "
                                                ), 'u00f3', 'ó'
                                            ), 'u00e2', 'â'
                                        ), 'u00f4', 'ô'
                                    ), 'u00e9', 'é'
                                ), 'u00ed', 'í'
                            ), 'u00e1', 'á'
                        ), 'u00e3', 'ã'
                    ), 'u00ea', 'ê'
                )
        END AS doencas_condicoes,

        CASE 
            WHEN identidade_genero IN ('Não', 'Outro', 'Sim') THEN 'Sem Informação'
            ELSE identidade_genero
        END AS identidade_genero,

        CASE 
            WHEN TRIM(
                REGEXP_REPLACE(
                    REGEXP_REPLACE(meios_comunicacao, r"[\"\\[\]']", ''), 
                    r",\s*", ", "
                )
            ) = '' THEN 'Sem informação'
            ELSE  
                REPLACE(
                    REPLACE(
                        REGEXP_REPLACE(
                            REGEXP_REPLACE(meios_comunicacao, r"[\"\\[\]']", ''), 
                            r",\s*", ", "
                        ), 'u00e3', 'ã'
                    ), 'u00e1', 'á'
                )
        END AS meios_comunicacao,

        orientacao_sexual,

        CASE 
            WHEN CAST(possui_plano_saude AS STRING) IN ('True') THEN '0'
            WHEN CAST(possui_plano_saude AS STRING) IN ('False') THEN '1'
            ELSE possui_plano_saude
        END AS possui_plano_saude,

        CASE
            WHEN TRIM(
                REGEXP_REPLACE(
                    REGEXP_REPLACE(em_caso_doenca_procura, r"[\"\\[\]']", ''), 
                    r",\s*", ", "
                )
            ) = '' THEN 'SEM INFORMAÇÃO'
            ELSE 
                REPLACE(
                    REPLACE(
                        REPLACE(
                            REGEXP_REPLACE(
                                REGEXP_REPLACE(em_caso_doenca_procura, r"[\"\\[\]']", ''), 
                                r",\s*", ", "
                            ), 'u00fa', 'ú'
                        ), 'u00ed', 'í'
                    ), 'u00e1', 'á'
                )
        END AS em_caso_doenca_procura,

        CASE 
            WHEN situacao_profissional = 'SMS CAPS DIRCINHA E LINDA BATISTA AP 33' THEN 'Sem Informação'
            ELSE situacao_profissional
        END AS situacao_profissional,

        CASE 
            WHEN CAST(vulnerabilidade_social AS STRING) IN ('True') THEN '0'
            WHEN CAST(vulnerabilidade_social AS STRING) IN ('False') THEN '1'
            ELSE vulnerabilidade_social
        END AS vulnerabilidade_social,

        DATE(data_atualizacao_cadastro) AS data_atualizacao_cadastro,

        CASE 
            WHEN CAST(familia_beneficiaria_auxilio_brasil AS STRING) IN ('True') THEN '0'
            WHEN CAST(familia_beneficiaria_auxilio_brasil AS STRING) IN ('False') THEN '1'
            ELSE familia_beneficiaria_auxilio_brasil
        END AS familia_beneficiaria_auxilio_brasil,

        CASE 
            WHEN CAST(crianca_matriculada_creche_pre_escola AS STRING) IN ('True') THEN '0'
            WHEN CAST(crianca_matriculada_creche_pre_escola AS STRING) IN ('False') THEN '1'
            ELSE crianca_matriculada_creche_pre_escola
        END AS crianca_matriculada_creche_pre_escola,

        altura,
        COALESCE(pressao_sistolica, 0) AS pressao_sistolica,
        COALESCE(pressao_diastolica, 0) AS pressao_diastolica,
        n_atendimentos_hospital,
        DATE(updated_at) as updated_at,
        tipo

    FROM `causal-guide-451216-q7.saude.tabela_saude`
)

SELECT DISTINCT * FROM pacientes;
