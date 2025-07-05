# Use official Node.js LTS image as the base
FROM node:alpine3.18

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package.json ./

# Install dependencies
RUN npm install 

# Copy the rest of the application code
COPY . .

# Expose port (change 3000 if your app uses a different port)
EXPOSE 4000

# Start the application
CMD ["npm", "run","start"]