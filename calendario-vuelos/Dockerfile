# Utiliza la imagen base de Node
FROM node:18-alpine

# Crear un directorio en /usr/src/app
WORKDIR /usr/src/app

# Copia los archivos package.json y package-lock.json
COPY package-lock.json ./
COPY package.json ./

# Instala las dependencias "npm install"
RUN npm install

# Copia el resto del proyecto al contenedor
COPY . .

# Exponer el puerto 3000
EXPOSE 3002

# Comando para iniciar la aplicación
CMD ["node", "src/app.js"]