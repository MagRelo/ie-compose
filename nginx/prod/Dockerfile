
# Use the standard Nginx image from Docker Hub
FROM nginx:alpine

# Copy config
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./snippets /etc/nginx/snippets
COPY ./.htpasswd /etc/nginx/.htpasswd

# Start Nginx when the container has provisioned.
CMD ["nginx", "-g", "daemon off;"]