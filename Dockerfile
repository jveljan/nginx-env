FROM nginx
ENV API_LOCATION="/api/"
ENV API_PROXY_PASS="http://example.com"
COPY nginx.conf /tmp/conf.template
CMD ["sh", "-c", "envsubst '$API_PROXY_PASS $API_LOCATION' < /tmp/conf.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"]