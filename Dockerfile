# Use the official NGINX image for ARM64 architecture
FROM arm64v8/nginx:latest
LABEL maintainer="mrkandpal08@gmail.com"

# Copy your custom NGINX configuration file to the correct location
COPY ./nginx.conf /etc/nginx/nginx.conf
