# Dockerfile frontend

# production environment
FROM nginx:1.25.2

COPY . /usr/share/nginx/html
COPY ./default.conf /etc/nginx/conf.d/
EXPOSE 3000

CMD ["nginx", "-g", "daemon off;"]