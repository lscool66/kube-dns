```sh

docker pull --platform=linux/arm64 bitnami/nginx:1.26.2
docker tag bitnami/nginx:1.26.2 registry.cn-beijing.aliyuncs.com/lscool66/nginx:1.26.2-arm64
docker push registry.cn-beijing.aliyuncs.com/lscool66/nginx:1.26.2-arm64

```