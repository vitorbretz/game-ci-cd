# Use the Nginx image from Amazon Public ECR (evita rate limit)
FROM public.ecr.aws/nginx/nginx:1.25-alpine

# Remove default nginx static files (boa prática)
RUN rm -rf /usr/share/nginx/html/*

# Copy the 2048 game files to the Nginx web root
COPY . /usr/share/nginx/html

# Expose HTTP port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
