# Use an official lightweight nginx image
FROM nginx:alpine

# Remove default nginx index page
RUN rm -rf /usr/share/nginx/html/*

# Copy your calculator project files to nginx html folder
COPY . /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Start nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
