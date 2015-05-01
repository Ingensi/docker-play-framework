![play][1]
# play-framework

Docker image which provides a typesafe activator 1.3.2, designed to launch play applications (v2.3+).
* Activator: 1.3.2
* Play version: 2.3.8 
* Java: Oracle-jdk-8u45
* OS: CentOS-7

## Run your app

Your play app has to be mounted in the container in the '/app' directory. Should you want to publish your app port to the host, you must use the -p argument.

Here is an example of a docker run command:

```
docker run -d \
  -v /path/to/your/play/app:/app:rw \
  -p 80:9000 \
  ingensi/play-framework
```

You can also package your app, in order to do that, create a `Dockerfile` like it:

```
FROM ingensi/play-framework:latest
MAINTERNER <your@email.com>

ADD /path/to/my/play-src /app
```

## Image inheritance

This docker image inherits from the [ingeni/oracle-jdk](https://registry.hub.docker.com/u/ingensi/oracle-jdk/dockerfile/) image. It includes an oracle jdk install in its latest version.


[1]: https://www.playframework.com/assets/images/logos/play_full_color.png
