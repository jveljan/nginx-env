# serve static files with proxy location

FROM jveljan/nginx-env

ENV API_LOCATION="/api/"
ENV API_PROXY_PASS="http://your.domain.api"

COPY your-app-static /usr/share/nginx/html