# Use the official Node.js image as the base image
FROM node:current-slim

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install the project dependencies
RUN npm install

# Copy the rest of the application code
COPY . ./

# Expose the port on which the app runs
EXPOSE 5000

# Define the command to run the application
CMD ["node", "src/index.js"]
