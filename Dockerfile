# Dockerfile
# Cambiado de node:25 a node:22-alpine para mayor estabilidad y rendimiento
FROM node:22-alpine

# Crear directorio de la aplicación
WORKDIR /usr/src/app

# Copiar archivos al contenedor
COPY package*.json ./
COPY index.js .

# Instalar dependencias limpiamente
RUN npm install --no-audit --no-fund

# Exponer el puerto de la aplicación
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["node", "index.js"]