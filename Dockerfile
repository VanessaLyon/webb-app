# Use an official lightweight Nginx image
FROM nginx:alpine

# Copy static files to Nginx
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx and keep it running in the foreground
CMD ["nginx", "-g", "daemon off;"]
