# Use the official NGINX image for ARM64 architecture
FROM arm64v8/nginx:latest
LABEL maintainer="mrkandpal08@gmail.com"

RUN mkdir -p /var/run/nginx /var/log/nginx /var/cache/nginx && \
	chown -R nginx:0 /var/run/nginx /var/log/nginx /var/cache/nginx && \
	chmod -R g=u /var/run/nginx /var/log/nginx /var/cache/nginx

 
# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy your custom NGINX configuration file to the correct location
COPY ./nginx.conf /etc/nginx/nginx.conf

# Copy the app files (e.g., HTML and CSS) into the NGINX container
COPY ./index.html /usr/share/nginx/html

ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# Expose the port for the web server
EXPOSE 80

# Default command to run NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]
