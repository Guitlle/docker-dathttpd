FROM node

RUN apt update; apt upgrade -y
RUN apt install libtool m4 automake
# install dathttpd (https://docs.npmjs.com/getting-started/fixing-npm-permissions)
RUN npm install -g --unsafe dathttpd

CMD ["dathttpd"]
