# Base image
FROM node:18-alpine

# Working directory inside container
WORKDIR /app

# Install serve globally (to serve build folder)
RUN npm install -g serve

# Default command to run container
# '-s build' means serve the build folder
# '-l 3000' port
# '--single' for SPA routing
CMD ["serve", "-s", "build", "-l", "3000", "--single"]
