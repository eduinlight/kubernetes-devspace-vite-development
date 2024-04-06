ARG NODE_VERSION
FROM node:${NODE_VERSION}

WORKDIR /home/user/app

COPY . .

ENTRYPOINT ["bash", "-c", "yarn && yarn dev"]
