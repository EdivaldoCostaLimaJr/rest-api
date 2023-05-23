# Use uma imagem base do Node.js
FROM node:14

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /usr/src/app

# Copie os arquivos do projeto para o diretório de trabalho
COPY . .

# Instale as dependências do projeto
RUN npm install

# Exponha a porta em que a aplicação está ouvindo
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["node", "index.js"]
