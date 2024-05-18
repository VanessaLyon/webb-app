# Use an official lightweight Nginx image
FROM nginx:alpine

# Remove the default server definition
RUN rm /etc/nginx/conf.d/default.conf

# Copy static files to Nginx
COPY . /usr/share/nginx/html

# Replace Nginx's default configuration to use the PORT environment variable
RUN echo "server { listen \$PORT; location / { root /usr/share/nginx/html; index index.html index.htm; }}" > /etc/nginx/conf.d/default.conf

# Expose the port (optional, for documentation purposes - Cloud Run ignores this)
EXPOSE 8080

# Start Nginx and keep it running in the foreground
CMD ["nginx", "-g", "daemon off;"]
