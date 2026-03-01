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

# Exponer puerto (usamos un número fijo, Railway lo mapeará)
EXPOSE 4200

# Servir la aplicación usando el puerto de Railway
CMD ["sh", "-c", "npx http-server dist/my-app-dsi6/browser -p $PORT"]