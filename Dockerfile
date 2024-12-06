# Use the official node image with Bun support
FROM bunsh/bun:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the application files into the container
COPY . .

# Install dependencies using Bun
RUN bun install

# Expose the port the app will run on
EXPOSE 3000

# Start the application
CMD ["bun", "run", "dev"]
