FROM node

RUN apt update; apt upgrade -y
RUN apt install libtool m4 automake
# install dathttpd (https://docs.npmjs.com/getting-started/fixing-npm-permissions)
RUN npm install -g --unsafe dathttpd
RUN setcap cap_net_bind_service=+ep `readlink -f \`which node\``

RUN useradd -c 'The user' -m -d /home/user -s /bin/bash user
USER user

CMD ["dathttpd"]
