# Had to remove "as builder" due to EBS errors
FROM node:alpine as builder
# FROM node:alpine

USER node
RUN mkdir -p /home/node/app
WORKDIR '/home/node/app'
COPY --chown=node:node ./package.json ./
RUN npm install
COPY --chown=node:node ./ ./
RUN npm run build

FROM nginx:alpine
EXPOSE 80
# change "--from=builder" to "--from=0"
COPY --from=builder /home/node/app/build /usr/share/nginx/html
#COPY --from=0 /home/node/app/build /usr/share/nginx/html