# Use the official Node.js image as a base
FROM node:16

# Set the working directory
WORKDIR /myapp

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Install Jest (optional, if you want it in the image)
RUN npm install jest

# Expose the application port
EXPOSE 5000

# Define the command to run the application
CMD ["node", "index.js"]
