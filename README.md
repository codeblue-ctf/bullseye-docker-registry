# bullseye-docker-registry


## Configuration

### Generate server certificate for Docker Registry Auth

```sh
$ ./generate-sample-certs.sh
```

### Docker Registry & Docker Registry Auth

```sh
$ docker-compose up
```


## Usage

### login
```sh
docker login localhost:5000
```

### tag image (if needed)
```sh
docker tag <image_name_to_push> localhost:5000/<username>/<image_name_to_push_on_remote>
```

### push image
```sh
docker push localhost:5000/<username>/<image_name_to_push_on_remote>
```
