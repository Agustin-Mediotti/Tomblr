# Use the official Node.js image as the base image
FROM node:18

# Set the working directory in the container
WORKDIR /server

# Copy the application files into the working directory
COPY ./server /server

# Install the application dependencies
RUN npm install

# Define the entry point for the container
CMD ["node", "index.js"]

#Listen for traffic on specified port

EXPOSE 3001
