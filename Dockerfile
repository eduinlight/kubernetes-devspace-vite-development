ARG NODE_VERSION
FROM node:${NODE_VERSION}

WORKDIR /home/user/app

ENTRYPOINT ["bash", "-c", "yarn && yarn dev"]
