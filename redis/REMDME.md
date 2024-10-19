```sh

docker pull --platform=linux/arm64 bitnami/redis:7.4.1
docker tag bitnami/redis:7.4.1 registry.cn-beijing.aliyuncs.com/lscool66/redis:7.4.1-arm64
docker push registry.cn-beijing.aliyuncs.com/lscool66/redis:7.4.1-arm64

```