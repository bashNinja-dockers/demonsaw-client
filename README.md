# Summary

I have improved the [Demonsaw]("https://demonsaw.com") dockerfile found in Andrew Morris's [Github]("https://github.com/andrew-morris/demonsaw-docker"). This will be added to dockerhub in order to facilitate use.

# Usage

OSX (insecure, for now)

```
$ git clone https://github.com/andrew-morris/demonsaw-docker
$ cd demonsaw-docker
$ brew install socat
$ socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\" # in a separate terminal
$ docker build -t demonsaw-docker .
$ docker run -d -e DISPLAY=1.1.1.1:0 demonsaw-test # replace with your IP, for X forwarding
```


