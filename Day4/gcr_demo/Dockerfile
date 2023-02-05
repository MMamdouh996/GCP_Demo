# Use the official nginx image as the base image
FROM nginx

# Copy the configuration file to the appropriate location
COPY ./nginx.conf /etc/nginx/nginx.conf

# Specify the command to run when starting the container
CMD ["nginx", "-g", "daemon off;"]

