FROM node:18-alpine AS builder
WORKDIR /app
COPY package.json ./
RUN npm install -g parcel
COPY . .
RUN parcel build src/index.html --dist-dir dist --no-cache

FROM nginx:alpine
COPY --from=builder /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
