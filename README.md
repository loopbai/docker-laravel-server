# docker-laravel-server
[![Last Tag](https://badgen.net/github/tag/loopbai/docker-laravel-server)](https://github.com/loopbai/docker-laravel-server)
[![Pulls](https://badgen.net/docker/pulls/loopbai/laravel-server)](https://hub.docker.com/r/loopbai/laravel-server)

## Usage

```
$ docker run -itd \
    -p 80:80 \
    -v $PWD:/var/www/laravel-app \
    --name app \
    loopbai/laravel-server
```

