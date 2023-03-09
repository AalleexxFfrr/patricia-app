# Use an official Node.js runtime as a parent image
FROM node:16-alpine

# Set the working directory to /app
WORKDIR /frontend

# Copy your application code to the container
COPY frontend/ .

# Install dependencies
RUN npm install

# Set the environment variable for the app
ENV NODE_ENV=production

# Start the app
CMD ["npm", "start"]

# Expose port 3000 for the app
EXPOSE 3000
