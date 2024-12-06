# Use the official Node.js image as the base image
FROM node:18

# Install Bun
RUN curl -fsSL https://bun.sh/installer | bash

# Set the working directory inside the container
WORKDIR /app

# Copy the application files into the container
COPY . .

# Install dependencies using Bun
RUN /root/.bun/bin/bun install

# Expose the port the app will run on
EXPOSE 3000

# Start the application
CMD ["/root/.bun/bin/bun", "run", "dev"]
