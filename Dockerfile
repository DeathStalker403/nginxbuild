# Use the official NGINX image for ARM64 architecture
FROM arm64v8/nginx:latest

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy your custom NGINX configuration file to the correct location
COPY ./nginx.conf /etc/nginx/nginx.conf

# Copy the app files (e.g., HTML and CSS) into the NGINX container
COPY ./index.html /usr/share/nginx/html

# Expose the port for the web server
EXPOSE 80

# Default command to run NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]

