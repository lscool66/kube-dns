```sh

docker pull --platform=linux/arm64 bitnami/java:17
docker tag bitnami/java:17 registry.cn-beijing.aliyuncs.com/lscool66/java:17-arm64
docker push registry.cn-beijing.aliyuncs.com/lscool66/java:17-arm64

```