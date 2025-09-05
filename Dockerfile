FROM node:18-alpine
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy full source code
COPY . .

# Build the frontend
RUN npm run build

# Install serve globally to serve the build folder
RUN npm install -g serve

# Command to run container
CMD ["serve", "-s", "build", "-l", "3000", "--single"]
