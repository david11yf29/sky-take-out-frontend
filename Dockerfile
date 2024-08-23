# Use the Nginx image
FROM nginx

WORKDIR /nginx-1.20.2

COPY . .

COPY html/sky/index.html /usr/share/nginx/html/

# Remove the default nginx.conf
RUN rm /etc/nginx/conf.d/default.conf

# Replace with our own nginx.conf
COPY conf/nginx.conf /etc/nginx/

EXPOSE 80