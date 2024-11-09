# Utiliza la imagen base de Node.js 18.17.1-alpine
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
EXPOSE 3003

# Comando para iniciar la aplicación
CMD ["node", "src/app.js"]