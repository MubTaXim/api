# Use the official Bun image from Docker Hub
FROM oven/bun:latest

# Set the working directory
WORKDIR /app

# Copy the package files
COPY package.json bun.lockb ./

# Install dependencies
RUN bun install

# Copy the rest of your application
COPY . .

# Expose the port that your app will run on
EXPOSE 3000

# Set the start command
CMD ["bun", "run", "dev"]
