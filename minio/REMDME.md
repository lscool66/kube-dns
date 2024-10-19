```sh

docker pull --platform=linux/arm64 bitnami/minio:2024.10.13
docker tag bitnami/minio:2024.10.13 registry.cn-beijing.aliyuncs.com/lscool66/minio:2024.10.13-arm64
docker push registry.cn-beijing.aliyuncs.com/lscool66/minio:2024.10.13-arm64

```