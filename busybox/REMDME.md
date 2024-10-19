```sh

docker pull --platform=linux/arm64/v8 busybox
docker tag busybox registry.cn-beijing.aliyuncs.com/lscool66/busybox:latest-arm64
docker push registry.cn-beijing.aliyuncs.com/lscool66/busybox:latest-arm64

```