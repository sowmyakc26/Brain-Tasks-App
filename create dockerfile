# Build stage
FROM node:18-alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Production stage
FROM nginx:alpine
# This line checks for BOTH 'dist' or 'build' folders to be safe
COPY --from=build /app/build /usr/share/nginx/html || COPY --from=build /app/dist /usr/share/nginx/html

# Update Nginx to listen on 3000
RUN sed -i 's/listen\(.*\)80;/listen 3000;/' /etc/nginx/conf.d/default.conf
EXPOSE 3000
CMD ["nginx", "-g", "daemon off;"]
