# docker-dathttpd
dathttpd docker image

To build:
~~~~
docker build -t dathttpd .
~~~~

To run
~~~~
sudo docker run -d --name dathttpd-service -v /tmp/dathttpd/:/home/user/dathttpd/ -v /tmp/dathttpd.yml:/home/user/.dathttpd.yml -p 80:80 -p 443:443 dathttpd
~~~~

Checkout [dathttpd repo](https://github.com/beakerbrowser/dathttpd) for the documentation on the configuration file, dathttpd.yml.
