# Imagen de Node.js
FROM node:18-alpine

# Establecer el directorio de trabajo
WORKDIR /usr/src/app

# Copiar solo los archivos de dependencias
COPY package*.json ./

# Instalar las dependencias
RUN npm install

# Copiar el código del proyecto al contenedor
COPY . .

# Exponer el puerto que usará nuestra API
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["node", "src/app.js"]