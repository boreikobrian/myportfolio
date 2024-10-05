# Usa una imagen base de Node.js
FROM node:alpine

# Instalar Vim
RUN apk update && apk add vim

# Establece el directorio de trabajo en la imagen
WORKDIR /app

# Copia el archivo package.json y package-lock.json al directorio de trabajo
COPY package.json package-lock.json ./

# Instala las dependencias
RUN npm install

# Copia el resto de los archivos al contenedor
COPY . .

# Expone el puerto en el que tu aplicación correrá
EXPOSE 4321

# Comando para iniciar tu aplicación
CMD ["npm", "start"]

