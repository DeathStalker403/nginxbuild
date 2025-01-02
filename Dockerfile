# Use the official NGINX image for ARM64 architecture
FROM arm64v8/nginx:latest

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the app files (e.g., HTML and CSS) into the NGINX container
COPY ./app /usr/share/nginx/html

# Expose the port for the web server
EXPOSE 80

# Default command to run NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]

