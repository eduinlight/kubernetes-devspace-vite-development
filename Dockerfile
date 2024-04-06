## DEVELOPMENT
# IMAGE
ARG NODE_VERSION
FROM node:${NODE_VERSION}

# CONTAINER USER CONFIGURATION
ARG UID 
ARG GID 
RUN if [ $(getent group $GID) ]; then groupdel -f `getent group $GID | cut -d: -f1`; fi \
  && if [ $(getent passwd $UID) ]; then userdel -f `getent passwd $UID | cut -d: -f1`; fi \
  && groupadd -r user -g $GID \
  && useradd -d /home/user -u $UID -m -s /bin/bash -g user user

WORKDIR /home/user/app

COPY . .

RUN chown -R user:user /home/user

USER user

ENTRYPOINT ["bash", "-c", "yarn && yarn dev"]
