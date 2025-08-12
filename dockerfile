FROM nginx:latest
COPY ./index.html /usr/share/nginx/html/index.html

# Replace default nginx config to listen on Cloud Run's port
RUN sed -i "s/listen 80;/listen ${PORT};/" /etc/nginx/conf.d/default.conf

EXPOSE 8080

