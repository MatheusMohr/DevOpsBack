# Etapa 1 realiza a build

FROM maven:3.9-eclipse-temurin-17 AS build

# Define a pasta de trabalho dentro do container
# Tudo que acontecer daqui para frente será dentro de /app
WORKDIR /app

# Copia o arqiuvo pom.xml para dentro do container
COPY pom.xml .

# Copia o código fonte (src) do projeto para o container
COPY src ./src

# Executa o build do maven
# -DskipTests = pula os testes para acelerar o Build
# package = gera o arquivo .jar dentro da pasta target
RUN mvn -DskipTests package














