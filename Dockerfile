# Use uma imagem base do Node.js
FROM node:18

# Define o diretório de trabalho dentro do container
WORKDIR /src/app

# Copie o package.json e package-lock.json para o diretório de trabalho
COPY package*.json ./

# Instale as dependências
RUN npm install

# Copie o restante do código da aplicação para o diretório de trabalho
COPY . .

# Exponha a porta que a aplicação vai usar
EXPOSE 3000

# Defina o comando para iniciar a aplicação
CMD ["npm", "start"
