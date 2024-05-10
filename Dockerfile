# Use the official Node.js image as a base
FROM node:latest

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the Svelte project
RUN npm run build

# Expose the port the app runs on
EXPOSE 5000

# Command to run the application
CMD [ "npm", "run", "start" ]
