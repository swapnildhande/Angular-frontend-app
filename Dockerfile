# This is the first stage 
FROM node:latest as build
# set working directory
WORKDIR /app
# copy the files from current directory to working directory of container
COPY . .
# Run npm install & npm run ng build
RUN npm install && npm run ng build
# Stage 2 of image to create NGINX
FROM nginx:alpine
WORKDIR /usr//share//nginx/html
# remove the default nginx static files
RUN rm -rf ./*
# copy the static content from build stage
COPY --from=build /app/dist/angular-app .
# run nginx with global directive and Daemon off
ENTRYPOINT [ "nginx", "-g", "daemon off;" ]
