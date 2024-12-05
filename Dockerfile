# Usando a imagem do Node.js
FROM node:18

# Definindo o diretório de trabalho
WORKDIR /usr/src/app

# Copiar o arquivo JS para dentro do contêiner
COPY . .

# Expor a porta para debug
EXPOSE 9229

# Rodar o arquivo JS diretamente
CMD ["node", "--inspect-brk=0.0.0.0:9229", "index.js"]
