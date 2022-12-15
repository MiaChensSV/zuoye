# Base image node 16
FROM node:lts-gallium
WORKDIR /app
# Install package
COPY package*.json ./
RUN npm install 
# Build React application
COPY src ./src
COPY public ./public
RUN npm run build
# Serve Build
RUN npm install -g serve
EXPOSE 3000
CMD ["serve", "-s", "build"]
