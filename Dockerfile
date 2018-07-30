FROM node:8

# Set variables
ENV \
    APPDIR="/usr/src/app" \
    SERVER_PORT="999"

# Set working directory
WORKDIR ${APPDIR}

RUN wget https://github.com/giorgoxxi/automation-bridge/archive/master.tar.gz \
  && tar -zxvf master.tar.gz \
  && mv automation-bridge-master/* ./ \
  && rm -rf master.tar.gz automation-bridge-master

RUN npm install --only=production

# Expose volume with configuration and userdata dir
VOLUME ${APPDIR}/user-config ${APPDIR}/service-config

EXPOSE $SERVER_PORT

CMD [ "npm", "start" ]