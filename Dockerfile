# Use the official Node.js image.
FROM node:14

# Set the working directory.
WORKDIR /usr/src/app

# Copy package.json and package-lock.json.
COPY package*.json ./

# Install dependencies.
RUN npm ci  # Use npm ci for a clean and reliable install

# Copy the rest of the application code.
COPY . .

# Expose the application port.
EXPOSE 8080

# Optionally create a non-root user
# RUN groupadd -r appgroup && useradd -r -g appgroup appuser
# USER appuser 

# Command to run the application.
CMD ["node", "index.js"]
