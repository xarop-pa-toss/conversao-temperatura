#Definir imagem original (será feito download se não presente)
FROM node

#Definir pasta de instalação (MKDIR + CD)
WORKDIR /app

#Copia alguns ficheiros para nova imagem
COPY package*.json ./

#Corre NPM (instalador de dependências de Node)
RUN npm install

#Copia os restantes ficheiros (impede npm de correr sempre que qualquer ficheiro é actualizado)
COPY . .

#Abrir porta para o serviço
EXPOSE 8080

#Comando para alimentar argumentos ao às apps no container
CMD ["node", "server.js"]