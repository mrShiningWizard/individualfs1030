# Use the official image as a parent image.
FROM node:current-slim

# Copy source code
COPY . /app

# Change working directory
WORKDIR /app

# Install dependencies
RUN npm install

# Expose API port to the outside
EXPOSE 8080

# Set ENV
ENV DATABASE_HOST /cloudsql/fs1040-website:us-east1:fs1040db=tcp:3306
ENV DATABASE_USER api
ENV DATABASE_PASSWORD securepass123
ENV DATABASE_NAME muhammad

# Launch application
CMD ["npm","start"]
