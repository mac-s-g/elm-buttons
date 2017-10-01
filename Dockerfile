FROM node:7.2.0

MAINTAINER Mac Gainor <mac.gainor@gmail.com>

RUN npm install -g elm@0.18.0 \
    && npm install -g elm-test@0.18.0 \
    && npm install -g elm-live@2.7.5

# Add project code
ADD . /app
WORKDIR /app
ADD elm-package.json /app/elm-package.json

RUN elm-package install --yes

EXPOSE 4000 4000
#live-reload
EXPOSE 35729 35729
