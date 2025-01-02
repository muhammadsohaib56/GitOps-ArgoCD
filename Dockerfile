# Use the official NGINX image as the base image
FROM nginx:alpine

# Set the working directory to NGINX's default static files directory
WORKDIR /usr/share/nginx/html

# Remove the default NGINX static files
RUN rm -rf ./*

# Copy the weather application files into the working directory
COPY index.html .
COPY style.css .
COPY script.js .

# Expose port 80 to serve the application
EXPOSE 80

# Start NGINX in the foreground to keep the container running
CMD ["nginx", "-g", "daemon off;"]
