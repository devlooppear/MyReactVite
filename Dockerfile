# Use the official Node.js image as the base image
FROM node:20 AS build

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json to install dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the source code
COPY . .

# Build the application
RUN npm run build

# Use the official Nginx image as the base image for the production image
FROM nginx:latest

# Copy the built app from the previous stage to the Nginx public directory
COPY --from=build /app/dist /usr/share/nginx/html

# Expose port 80 for the Nginx server
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
