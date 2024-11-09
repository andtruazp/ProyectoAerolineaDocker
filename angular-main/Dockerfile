#Utiliza la imagen base de Nginx estable en Alpine
FROM nginx:stable-alpine

# Crea un volumen llamado /temp
VOLUME /temp

# Elimina el contenido predeterminado de la carpeta HTML
RUN rm -rf /usr/share/nginx/html/*

# Copia la configuración de Nginx y los archivos MIME
COPY nginx.conf /etc/nginx/
COPY mime.types /etc/nginx/mime.types

# Copia el contenido del directorio del proyecto
COPY proyecto_aerolinea /usr/share/nginx/html/

# Exponer el puerto
EXPOSE 80

# Comando para iniciar Nginx en modo foreground
CMD ["nginx", "-g", "daemon off;"]