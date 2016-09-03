# Summary

I dockerized [Demonsaw]("https://demonsaw.com"). Still a proof of concept but it's functional. Literally the only reason I built this was to do it before Preston. Get a job man. 

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


