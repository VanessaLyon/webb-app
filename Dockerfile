# Dockerfile

# Use the official NGINX image from the Docker Hub
FROM nginx:alpine

# Remove default NGINX configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy the static website files to the NGINX html folder
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Command to run the NGINX server
CMD ["nginx", "-g", "daemon off;"]
