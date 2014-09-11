# play-framework

Docker image which contains an installation of play 2 framwork.

## Run your app

Your play app has to be monted in the container in the '/app' directory as follows:

```
docker run -d -v /app:/path/to/your/play/app:rw -e 9000:xxxx ingensi/play-framework
```
