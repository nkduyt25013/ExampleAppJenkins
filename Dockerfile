FROM node:latest
WORKDIR /apps
COPY . /apps
RUN npm install && npm run build
EXPOSE 3000
CMD ["node", "index.js"]
#This Dockerfile is used to build the application