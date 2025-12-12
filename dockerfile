# Use the official lightweight Nginx image
FROM nginx:alpine

# Remove the default Nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your portfolio into the Nginx web root
COPY . /usr/share/nginx/html

# Expose port 80 (inside the container)
EXPOSE 80

# Nginx default CMD already runs the server, so no need to override it
