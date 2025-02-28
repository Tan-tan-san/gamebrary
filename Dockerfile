# Step 1: Build the frontend
FROM node:16-alpine as builder
WORKDIR /app

# Install necessary tools (e.g., git) for cloning the external repository
RUN apk add --no-cache git

# Clone the repository inside the container
RUN git clone https://github.com/gamebrary/gamebrary.git .

# Move into the cloned directory
WORKDIR /app

# Install dependencies and build
RUN yarn install
RUN yarn build

# Step 2: Serve with NGINX
FROM nginx:alpine
COPY --from=builder /app/dist /usr/share/nginx/html

# Expose the default NGINX port
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
