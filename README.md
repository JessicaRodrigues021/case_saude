Análise de Qualidade de Dados
📌 Descrição
Este projeto tem como objetivo analisar a qualidade de um conjunto de dados contendo informações sobre pacientes, identificando inconsistências, erros e oportunidades de melhoria na estrutura dos dados.
📊 Principais Descobertas
🔹 Características que Chamam Atenção
Diversidade de variáveis: O dataset inclui informações socioeconômicas, demográficas e de saúde.
Inclusão de identidade de gênero e orientação sexual: A presença de categorias detalhadas, mas também inconsistências nos registros.
Dados temporais: Datas de cadastro e atualização permitem entender a periodicidade das mudanças nos registros.
⚠️ Problemas Identificados
Erros de consistência e formato
Datas inconsistentes (exemplo: 1900-01-01 no campo updated_at).
Unidades de medida possivelmente erradas (exemplo: altura de 155 cm e peso de 18 kg).
Falta de padronização em alguns campos categóricos (exemplo: valores como "Não", False e 0 no mesmo campo).
Dados faltantes ou preenchidos incorretamente
Ocupação como "Não se aplica" sem contexto claro.
Religião preenchida como "Outra" sem detalhamento.
Registros sem informações de doenças e condições médicas.
Possíveis duplicidades e erros de atualização
Registros muito similares podem indicar duplicações.
Informações desatualizadas, com algumas datas de última atualização muito antigas.
🔎 Questionamentos para os Fornecedores de Dados
Como é feita a atualização dos registros?
Existe um padrão para preenchimento dos campos categóricos?
Há controle de qualidade para evitar erros como datas futuras no cadastro?
🛠 Tecnologias Utilizadas
Python (pandas, numpy, matplotlib)
SQL para análise e identificação de problemas nos dados
Jupyter Notebook para exploração inicial
🚀 Próximas Etapas
Limpeza e padronização dos dados.
Análise de padrões de comorbidade.
Identificação de outliers em variáveis críticas (altura, peso, pressão arterial).
Desenvolvimento de métricas para medir a qualidade e atualização dos dados.
