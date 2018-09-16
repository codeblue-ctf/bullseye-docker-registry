# bullseye-docker-registry


## Configuration

### Generate server certificate for Docker Registry Auth

```sh
$ openssl req -nodes -newkey rsa:4096 -keyout config/certs/server.key -out config/certs/server.csr -subj "/CN=dockerauth"
$ openssl x509 -in config/certs/server.csr -out config/certs/server.crt -req -signkey config/certs/server.key -days 3650
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