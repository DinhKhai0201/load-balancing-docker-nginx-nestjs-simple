# Use node:18 image
FROM node:18.0.0

# Set working directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy source code
COPY . .

# Build app
RUN npm run build

# Install PM2 globally
RUN npm install pm2 -g

# Set environment variables
ENV PORT 3000

# Expose port
EXPOSE $PORT

# Start app
CMD ["pm2-runtime", "start", "ecosystem.config.js"]

