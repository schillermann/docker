FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
  && apt-get install -y \
  nginx

COPY nginx.conf /etc/nginx/
COPY site.conf /etc/nginx/sites-available/default
COPY example.html /app/public/index.html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]