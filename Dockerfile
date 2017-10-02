FROM node

RUN apt update; apt upgrade -y
RUN apt install libtool m4 automake
# install dathttpd (https://docs.npmjs.com/getting-started/fixing-npm-permissions)
RUN npm install -g dathttpd
RUN useradd -c 'The user' -m -d /home/user -s /bin/bash user
USER user

CMD ["dathttpd"]
