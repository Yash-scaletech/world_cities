FROM node:20-alpine
WORKDIR /app
COPY . .
RUN  npm install
EXPOSE 7001
CMD ["node", "app.js"]