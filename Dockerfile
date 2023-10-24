# Use an official Node.js runtime as the base image
FROM node:20

# Create and set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files into the container
COPY package*.json ./

# Install the application dependencies
RUN npm install

# Copy the rest of the application source code into the container
COPY . .

# Expose the port on which the application will run
EXPOSE 3000

# Command to start the application
CMD ["npm", "start"]
