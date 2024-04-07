ARG NODE_VERSION
FROM node:${NODE_VERSION} AS node-image

FROM node-image AS dev
WORKDIR /home/user/app
