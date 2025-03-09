ARG NODE_VERSION=20.18.3
ARG ANGULAR_CLI_VERSION=19.2.1

FROM node:${NODE_VERSION}-slim

RUN apt-get update && apt-get install -y \
libgtk2.0-0 \
libgtk-3-0 \
libgbm-dev \
libnotify-dev \
libnss3 \
libxss1 \
libasound2 \
libxtst6 \
xauth \
xvfb

RUN npm i -g cypress @angular/cli@${ANGULAR_CLI_VERSION}

#Set to `false` to disable Angular CLI analytics.
ENV NG_CLI_ANALYTICS=false

WORKDIR /app