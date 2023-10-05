# Use an official Nginx runtime as a parent image
FROM nginx:latest

# Copy the HTML and CSS files into the container
COPY index.html /usr/share/nginx/html
COPY styles.css /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx server when the container runs
CMD ["nginx", "-g", "daemon off;"]
