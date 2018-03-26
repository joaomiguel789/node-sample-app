FROM node:carbon

# Diretorio de axer. da aplicação
WORKDIR /usr/src/app

# Copiando dependencias
COPY package.json ./

# Instalando dependencias
RUN npm install

#Copiar tudo que está no diretorio corrente para o $WORKDIR 
COPY . .

#Porta onde a aplicção recebe conexoes
EXPOSE 8080

#Execução da aplicação usando CMD (Comando a ser executado pelo container)
CMD [ "npm", "start" ] 