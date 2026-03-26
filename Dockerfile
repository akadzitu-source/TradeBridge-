# Use an official Node.js runtime as the base image
FROM node:18-alpine AS build

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install production dependencies only
RUN npm install --only=production

# Copy the application files
COPY . .

# Build the application (if needed)
# RUN npm run build   # Uncomment if you have a build process

# Production stage
FROM node:18-alpine AS production

# Set the working directory for production
WORKDIR /app

# Copy only the necessary files from the build stage
COPY --from=build /app .

# Health check
HEALTHCHECK CMD curl --fail http://localhost:3000/ || exit 1

# Start the application
CMD ["node", "server.js"]
