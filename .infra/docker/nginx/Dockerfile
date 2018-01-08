FROM nginx:1.13.1-alpine
COPY web /app/web
COPY ./.infra/docker/nginx/site.conf /etc/nginx/conf.d/site.conf
WORKDIR /app
