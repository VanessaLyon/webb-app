# Use an official lightweight Nginx image
FROM nginx:alpine

# Remove the default server definition
RUN rm /etc/nginx/conf.d/default.conf

# Copy static files to Nginx
COPY . /usr/share/nginx/html

# Copy the Nginx template file
COPY default.conf.template /etc/nginx/conf.d/default.conf.template

# Use environment variables to configure Nginx at runtime
CMD /bin/sh -c "envsubst '\$PORT' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"
