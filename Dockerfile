FROM node:22.12-alpine

WORKDIR /app

COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build -- --configuration=production

# Verificar que los archivos existen
RUN ls -la /app/dist/my-app-dsi6/browser

EXPOSE 4200
CMD ["sh", "-c", "npx http-server dist/my-app-dsi6/browser -p $PORT"]