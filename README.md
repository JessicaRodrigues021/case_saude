# 📊 Análise de Qualidade de Dados

## 📌 Descrição
Este projeto tem como objetivo analisar a qualidade de um conjunto de dados contendo informações sobre pacientes, identificando inconsistências, erros e oportunidades de melhoria na estrutura dos dados.

---

## 🚀 Principais Descobertas

### 🔹 Características que Chamam Atenção
- **Diversidade de variáveis:** O dataset inclui informações socioeconômicas, demográficas e de saúde.
- **Inclusão de identidade de gênero e orientação sexual:** A presença de categorias detalhadas, mas também inconsistências nos registros.
- **Dados temporais:** Datas de cadastro e atualização permitem entender a periodicidade das mudanças nos registros.

### ⚠️ Problemas Identificados
#### 🛑 Erros de Consistência e Formato
- Datas inconsistentes (exemplo: `1900-01-01` no campo `updated_at`).
- Unidades de medida possivelmente erradas (exemplo: altura de `155 cm` e peso de `18 kg`).
- Falta de padronização em alguns campos categóricos (exemplo: valores como `"Não"`, `False` e `0` no mesmo campo).

#### 🛑 Dados Faltantes ou Preenchidos Incorretamente
- Ocupação como `"Não se aplica"` sem contexto claro.
- Religião preenchida como `"Outra"` sem detalhamento.
- Registros sem informações de doenças e condições médicas.

#### 🛑 Possíveis Duplicidades e Erros de Atualização
- Registros muito similares podem indicar duplicações.
- Informações desatualizadas, com algumas datas de última atualização muito antigas.

---

## 🔎 Questionamentos para os Fornecedores de Dados
- Como é feita a atualização dos registros?
- Existe um padrão para preenchimento dos campos categóricos?
- Há controle de qualidade para evitar erros como datas futuras no cadastro?

---

## 🛠 Tecnologias Utilizadas
- **SQL (BigQuery)** para análise e identificação de problemas nos dados.

---

## 📌 Como a Solução Foi Idealizada?
1. **Exploração inicial dos dados:**  
   - Identificação da estrutura do dataset e análise da qualidade dos dados disponíveis.
2. **Identificação de padrões e problemas:**  
   - Análise exploratória para detectar inconsistências, outliers e possíveis erros de preenchimento.
3. **Formulação de questionamentos:**  
   - Levantamento de hipóteses sobre os problemas identificados para questionamento aos fornecedores.
4. **Propostas de melhoria e análises futuras:**  
   - Sugestões para aprimorar a qualidade dos dados e adicionar novas análises.

---

## 📊 **Demonstração da Query SQL**
### 📌 O que a query faz?
- Ajusta e paronida os dados.

---

## 📈 Conclusão e Aprendizados
- **Os dados apresentam problemas de atualização e padronização**, o que pode comprometer a análise.
- **Os questionamentos levantados podem melhorar a coleta e qualidade dos dados.**
- **Futuras análises** podem incluir um modelo de detecção de outliers e um acompanhamento contínuo da integridade dos registros.

---

## 🚀 Próximas Etapas
- Limpeza e padronização dos dados.
- Análise de padrões de comorbidade.
- Identificação de outliers em variáveis críticas (altura, peso, pressão arterial).
- Desenvolvimento de métricas para medir a qualidade e atualização dos dados.

---

🔗 **Autor:** Jessica Cristina Teles Rodrigues  
📅 **Data:** Fevereiro de 2025  
