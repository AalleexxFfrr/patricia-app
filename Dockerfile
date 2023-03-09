# Use an official Node.js runtime as a parent image
FROM node:14-alpine

# Set the working directory to /app
WORKDIR /patricia-app

# Copy your application code to the container
COPY . /patricia-app

# Install dependencies
RUN cd frontend && npm ci

# Build app
RUN cd frontend && npm run build --if-present

# Set the environment variable for the app
ENV NODE_ENV=production

# Expose port 3000 for the app
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
