# play-framework

Docker image which contains an installation of play 2 framwork.

## Run your app

Your play app has to be monted in the container in the '/app' directory as follows:

```
docker run -d -v /path/to/your/play/app:/app:rw ingensi/play-framework
```

By default, if no port is specified, your app will be availeble on port 9001 from the host. You can override this mapping by setting manually the port:

```
docker run -d -v /path/to/your/play/app:/app:rw -p 9000:xxxx ingensi/play-framework
```
