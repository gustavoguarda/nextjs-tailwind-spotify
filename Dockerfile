# Use a imagem oficial do Node.js 18 como base
FROM node:22

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie o package.json inicial para o contêiner
COPY package*.json ./

# Instale as dependências do projeto (se o package.json existir)
RUN npm install

# Copie o restante do código do projeto para o contêiner
COPY . .

# Exponha a porta em que a aplicação vai rodar
EXPOSE 3000

# Comando para rodar a aplicação
CMD ["npm", "run", "dev"]