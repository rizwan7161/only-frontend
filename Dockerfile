FROM node:18-alpine
WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
RUN NODE_OPTIONS="--max_old_space_size=2048" npm run build

RUN npm install -g serve

CMD ["serve", "-s", "build", "-l", "3000"]
