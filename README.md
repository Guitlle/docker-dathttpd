# docker-dathttpd
dathttpd docker image

To build:
~~~~
docker build -t docker-dathttpd .
~~~~

To run
~~~~
docker run -d --name dathttpd -v /tmp/dathttpd.yml:/home/user/.dathttpd.yml -p 80:80 -p 443:443 docker-dathttpd
~~~~

Checkout [dathttpd repo](https://github.com/beakerbrowser/dathttpd) for the documentation on the configuration file, dathttpd.yml.
