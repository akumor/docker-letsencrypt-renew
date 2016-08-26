# docker-letsencrypt-renew
Project to build and run a Docker container that will renew a let's encrypt SSL certificate.

# Build The Image

Clone this repository or download the zip, then enter the root directory of the project and run the following command:

```
docker build --rm=true --tag="<username>/docker-letsencrypt-renew" .
```

# Run The Container
First run a conatiner you want to capture the logs from. If your container was not given a name, grab the name and pass it to the container:

```
docker run -it --rm -p 80:80 --volumes-from CONTAINER_NAME akumor/docker-letsencrypt-renew
```

or use docker-letsencrypt-renew with configuration files on the host machine

```
docker run -it --rm -p 80:80 --volume=[HOST-DIR:]CONTAINER-DIR[:OPTIONS]]] akumor/docker-letsencrypt-renew
```

# Resources

