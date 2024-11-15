# Use a lightweight Alpine Linux image
FROM alpine:latest

# Install a simple web server (e.g., BusyBox HTTPD)
RUN apk add --no-cache busybox

# Expose port 80
EXPOSE 80

# Start the web server (will serve a basic HTTP page)
CMD echo "Hello, World from Docker!" > /www/index.html && busybox httpd -f -p 80
