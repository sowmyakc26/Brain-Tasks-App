FROM nginx:alpine
# Copy the static files from the dist folder to the nginx html directory
COPY dist/ /usr/share/nginx/html
# Expose port 80 (standard for Nginx) or 3000 if required by your task
EXPOSE 3000
CMD ["nginx", "-g", "daemon off;"]
