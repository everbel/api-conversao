FROM node:16.3.0-alpine3.13
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
CMD ["node","index.js","--workers=3", "--bind", "0.0.0.0:5000", "app:app"]
LABEL key="Desenvolvido por Everbel"