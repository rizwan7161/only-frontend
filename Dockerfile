FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN NODE_OPTIONS="--max-old-space-size=4096" npm run build
RUN npm install -g serve
CMD ["serve", "-s", "build", "-l", "3000", "--single"]
