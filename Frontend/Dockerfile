FROM node:23-alpine as builder
ARG BACKEND_URL
ENV VITE_BACKEND_URL=$BACKEND_URL
WORKDIR /src
COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build

FROM nginx:alpine
EXPOSE 80
COPY --from=builder /src/dist/ /usr/share/nginx/html/


