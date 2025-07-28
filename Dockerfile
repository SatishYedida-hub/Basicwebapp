# Use the official Nginx image from Docker Hub
FROM nginx:latest

# Remove the default Nginx website content
RUN rm -rf /usr/share/nginx/html/*

# Copy our custom HTML file to the Nginx html directory
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Nginx starts automatically with the base image, no CMD needed
