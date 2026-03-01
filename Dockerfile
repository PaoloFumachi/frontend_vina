FROM node:22.12-alpine

WORKDIR /app

# Copiar archivos de dependencias
COPY package*.json ./

# Instalar dependencias exactas
RUN npm ci

# Copiar el resto del proyecto
COPY . .

# Construir la aplicación
RUN npm run build -- --configuration=production

# Exponer puerto
EXPOSE 4200

# Servir la aplicación
CMD ["npx", "http-server", "dist/my-app-dsi6/browser", "-p", "4200"]