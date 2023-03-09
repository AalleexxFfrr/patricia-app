# Use an official Node.js runtime as a parent image
FROM node:14-alpine

# Set the working directory to /app
WORKDIR /patricia-app/frontend

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm ci

# Copy the rest of the application files to the working directory
COPY . .

# Set the environment variable for the app
ENV NODE_ENV=production

# Expose port 3000 for the app
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
