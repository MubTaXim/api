# Use an official Node.js image as the base
FROM node:18

# Install Bun
RUN curl -fsSL https://bun.sh/install | bash

# Set the working directory in the container
WORKDIR /app

# Copy the project files into the container
COPY . .

# Install dependencies using Bun
RUN bun install

# Expose the port your app runs on
EXPOSE 3000

# Start the app using Bun
CMD ["bun", "start"]
