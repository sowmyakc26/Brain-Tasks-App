# Use Amazon's public mirror for Nginx to avoid the 429 Rate Limit error
FROM nginx:alpine
COPY ./dist /usr/share/nginx/html


# Copy the 'dist' folder from your repository directly into Nginx


# Update Nginx to listen on port 3000 (standard for your setup)
RUN sed -i 's/listen\(.*\)*80;/listen 3000;/' /etc/nginx/conf.d/default.conf

EXPOSE 3000

CMD ["nginx", "-g", "daemon off;"]
