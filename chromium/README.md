# browserless/chromium

```sh
docker login --username=lscool66@outlook.com registry.cn-beijing.aliyuncs.com
docker pull --platform=linux/arm64 ghcr.io/browserless/chromium
docker tag ghcr.io/browserless/chromium registry.cn-beijing.aliyuncs.com/lscool66/chromium:latest-arm64
docker push registry.cn-beijing.aliyuncs.com/lscool66/chromium:latest-arm64


docker pull --platform=linux/amd64 ghcr.io/browserless/chromium
docker run \
  --rm \
  -p 3000:3000 \
  -e "CONCURRENT=10" \
  -e "TOKEN=6R0W53R135510" \
  ghcr.io/browserless/chromium
docker tag ghcr.io/browserless/chromium registry.cn-beijing.aliyuncs.com/lscool66/chromium:latest-amd64
docker push registry.cn-beijing.aliyuncs.com/lscool66/chromium:latest-amd64
docker pull --platform=linux/amd64 registry.cn-beijing.aliyuncs.com/lscool66/chromium:latest-amd64
docker run \
  --rm \
  -p 3000:3000 \
  -e "CONCURRENT=10" \
  registry.cn-beijing.aliyuncs.com/lscool66/chromium:latest-amd64

docker pull ghcr.io/browserless/chromium:v2.21.1@sha256:29797c6ac9b2347363565d596c487c63bf13b600e187fab684a42861f5c7a8c3
docker tag ghcr.io/browserless/chromium:v2.21.1@sha256:29797c6ac9b2347363565d596c487c63bf13b600e187fab684a42861f5c7a8c3 registry.cn-beijing.aliyuncs.com/lscool66/chromium:latest-arm64
docker login --username=lscool66@outlook.com registry.cn-beijing.aliyuncs.com
docker push registry.cn-beijing.aliyuncs.com/lscool66/chromium:latest-arm64

docker pull --platform=linux/arm64 registry.cn-beijing.aliyuncs.com/lscool66/chromium:latest-arm64
docker tag registry.cn-beijing.aliyuncs.com/lscool66/chromium:latest-arm64 sealos.hub:5000/lscool66/chromium:latest-arm64
docker push sealos.hub:5000/lscool66/chromium:latest-arm64
nerdctl -n k8s.io pull sealos.hub:5000/lscool66/chromium:latest-arm64

nerdctl -n k8s.io run \
  --rm \
  -p 3000:3000 \
  -e "CONCURRENT=10" \
  -e "TOKEN=6R0W53R135510" \
  -e "TIMEOUT=1800000" \
  sealos.hub:5000/lscool66/chromium:latest-arm64
  
  
docker pull ghcr.io/linuxserver/chromium:version-c82f9028@sha256:e1b052043f6fc3b6ef4b28f960b6f99f31392656f22f908bde3eb8306d2a22c7
docker tag ghcr.io/linuxserver/chromium:version-c82f9028@sha256:e1b052043f6fc3b6ef4b28f960b6f99f31392656f22f908bde3eb8306d2a22c7 registry.cn-beijing.aliyuncs.com/lscool66/chromium:version-c82f9028
docker login --username=lscool66@outlook.com registry.cn-beijing.aliyuncs.com
docker push registry.cn-beijing.aliyuncs.com/lscool66/chromium:version-c82f9028


```

# chromium

```sh
docker pull --platform=linux/arm64 registry.cn-beijing.aliyuncs.com/lscool66/chromium:version-c82f9028
docker tag registry.cn-beijing.aliyuncs.com/lscool66/chromium:version-c82f9028 sealos.hub:5000/lscool66/chromium:version-c82f9028
docker push sealos.hub:5000/lscool66/chromium:version-c82f9028
nerdctl -n k8s.io pull sealos.hub:5000/lscool66/chromium:version-c82f9028
nerdctl -n k8s.io run \
  --rm \
  -p 3000:3000 \
  -p 3001:3001 \
  sealos.hub:5000/lscool66/chromium:version-c82f9028
```



```sh
# 安装 Docker Buildx 插件
docker buildx install
 
# 创建一个新的 build worker
docker buildx create --name mybuilder --use
 
# 启动 build worker 支持多平台构建
docker buildx inspect --bootstrap
 
# 构建 ARM64 架构的 Docker 镜像
```

```sh
docker buildx build --platform=linux/arm64 -t registry.cn-beijing.aliyuncs.com/lscool66/chromium:version-c82f9028-java17-arm64 --push -f Dockerfile.aarch64 .
```



```sh
docker buildx build --platform=linux/arm64 -t registry.cn-beijing.aliyuncs.com/lscool66/chromium:version-c82f9028-java17-arm64 --push .

docker pull --platform=linux/arm64 registry.cn-beijing.aliyuncs.com/lscool66/chromium:version-c82f9028-java17-arm64
docker tag registry.cn-beijing.aliyuncs.com/lscool66/chromium:version-c82f9028-java17-arm64 sealos.hub:5000/lscool66/chromium:version-c82f9028-java17-arm64
docker push sealos.hub:5000/lscool66/chromium:version-c82f9028-java17-arm64
nerdctl -n k8s.io pull sealos.hub:5000/lscool66/chromium:version-c82f9028-java17-arm64
nerdctl -n k8s.io run \
  --rm \
  -it \
  -p 3000:3000 \
  -p 3001:3001 \
  sealos.hub:5000/lscool66/chromium:version-c82f9028-java17-arm64 bash
```

```sh
docker buildx build --platform=linux/arm64 -t registry.cn-beijing.aliyuncs.com/lscool66/chromium:latest-arm64 -f --push .
docker pull --platform=linux/arm64 registry.cn-beijing.aliyuncs.com/lscool66/chromium:latest-arm64
docker tag registry.cn-beijing.aliyuncs.com/lscool66/chromium:latest-arm64 sealos.hub:5000/lscool66/chromium:latest-arm64
docker push sealos.hub:5000/lscool66/chromium:latest-arm64
nerdctl -n k8s.io pull sealos.hub:5000/lscool66/chromium:latest-arm64

nerdctl -n k8s.io run \
  --rm \
  -p 3000:3000 \
  -e "CONCURRENT=10" \
  -e "TOKEN=6R0W53R135510" \
  -e "TIMEOUT=1800000" \
  -e "CORS=true" \
  sealos.hub:5000/lscool66/chromium:latest-arm64
```



```sh
docker run -it --rm bitnami/java:17 bash

docker pull 10.170.33.110/cmd-rcp/cwinlis-backend@sha256:4eae488a199c1450e7a2cabb380b26a370630e64b77395b57c2b47cb9faaf6fe

docker pull 10.170.33.110/cmd-rcp/library/openjdk@sha256:d732b25fa8a6944d312476805d086aeaaa6c9e2fbc3aefd482b819d5e0e32e10

docker pull sealos.hub:5000/cwinlis/java:17


docker pull harbor.neusoftpacs.com/cmd-rcp/cwinlis-backend@sha256:4eae488a199c1450e7a2cabb380b26a370630e64b77395b57c2b47cb9faaf6fe



cat > Dockerfile <<EOF
FROM harbor.neusoftpacs.com/java/jdk:17
EOF

docker build --platform=linux/amd64 -t jdk:17 .


docker pull sealos.hub:5000/cwinlis/java:17


cat > Dockerfile <<EOF
FROM sealos.hub:5000/cwinlis/java:17
EOF

docker build --platform=linux/arm64 -t java:17 .


cat > Dockerfile <<EOF
FROM sealos.hub:5000/lscool66/java:17
EOF

docker build --platform=linux/arm64 -t java:17 .


cat > Dockerfile <<EOF
FROM sealos.hub:5000/lscool66/java:17
EOF
nerdctl -n k8s.io build  -t java:17 .

kubectl run -it --rm --restart=Never --image=sealos.hub:5000/lscool66/java:17 -- java-17-test


/home/app/cwinlis-pdf-exporter-starter/logs

source <(docker completion bash) && docker completion bash | sudo tee /etc/bash_completion.d/docker

docker  login  -u guest -p '1qaz!QAZ' http://10.170.33.110

docker  login  -u admin -p passw0rd http://sealos.hub:5000



[registry]
  [registry."registry.example.com:5000"]
    http = true
    insecure = true
  [registry."10.170.33.110"]
    http = true
    insecure = true


--platform=linux/arm64 bitnami/java:17

docker  login  -u admin -p passw0rd http://sealos.hub:5000
docker pull --platform=linux/arm64 registry.cn-beijing.aliyuncs.com/lscool66/java:17
docker tag registry.cn-beijing.aliyuncs.com/lscool66/java:17 sealos.hub:5000/lscool66/java:17
docker push sealos.hub:5000/lscool66/java:17
kubectl run -it --rm --restart=Never --image=sealos.hub:5000/lscool66/java:17 -- java-17-test

docker pull --platform=linux/arm64 registry.cn-beijing.aliyuncs.com/lscool66/redis:7.4.1
docker tag registry.cn-beijing.aliyuncs.com/lscool66/redis:7.4.1 sealos.hub:5000/lscool66/redis:7.4.1
docker push sealos.hub:5000/lscool66/redis:7.4.1
kubectl run -it --rm --restart=Never --image=sealos.hub:5000/lscool66/java:17 -- java-17-test


docker pull --platform=linux/arm64 registry.cn-beijing.aliyuncs.com/lscool66/nginx:1.26.2
docker tag registry.cn-beijing.aliyuncs.com/lscool66/nginx:1.26.2 sealos.hub:5000/lscool66/nginx:1.26.2
docker push sealos.hub:5000/lscool66/nginx:1.26.2

bitnami/minio:2024.10.13

docker pull --platform=linux/arm64 registry.cn-beijing.aliyuncs.com/lscool66/minio:2024.10.13
docker tag registry.cn-beijing.aliyuncs.com/lscool66/minio:2024.10.13 sealos.hub:5000/lscool66/minio:2024.10.13
docker push sealos.hub:5000/lscool66/minio:2024.10.13

mc alias set minio1 http://127.0.0.1:9000 admin cmd_admin*8
mc config host ls


sealos.hub:5000/cwinlis-pdf-exporter-arm:latest
/home/app/cwinlis-pdf-exporter-starter/logs

http://cwinlis.10.142.1.156.nip.io:31806

cwinlis.10.142.1.156.nip.io


docker pull --platform=linux/arm64 registry.cn-beijing.aliyuncs.com/lscool66/chrome:latest
docker tag registry.cn-beijing.aliyuncs.com/lscool66/chrome:latest sealos.hub:5000/lscool66/chrome:latest
docker push sealos.hub:5000/lscool66/chrome:latest

docker pull --platform=linux/arm64 ghcr.io/browserless/chromium


kubectl run -it --rm --restart=Never --port='3000' --image=sealos.hub:5000/lscool66/chrome:latest -- chrome-test



```

# browserless/chromium

```sh
docker pull ghcr.io/browserless/chromium:v2.21.1
docker run \
  --rm \
  -p 3000:3000 \
  -e "CONCURRENT=10" \
  -e "TOKEN=6R0W53R135510" \
  ghcr.io/browserless/chromium:v2.21.1

  curl -X POST \
  https://miniature-orbit-jjgrp9xv9qrcpv5q-3000.app.github.dev/pdf?token=6R0W53R135510 \
  -H 'Cache-Control: no-cache' \
  -H 'Content-Type: application/json' \
  -d '{
  "url": "https://baidu.com/",
  "options": {
    "displayHeaderFooter": true,
    "printBackground": false,
    "format": "A0"
  }
}' > baidu.pdf

curl -X POST \
  http://127.0.0.1:3000/pdf?token=6R0W53R135510 \
  -H 'Cache-Control: no-cache' \
  -H 'Content-Type: application/json' \
  -d '{
  "url": "https://baidu.com/",
  "options": {
    "displayHeaderFooter": true,
    "printBackground": false,
    "format": "A0"
  }
}' > baidu.pdf

curl -X POST \
  http://10.142.1.156:30560/pdf?token=6R0W53R135510 \
  -H 'Cache-Control: no-cache' \
  -H 'Content-Type: application/json' \
  -d '{
  "html": "<h1>Hello World!</h1>",
  "options": {
    "displayHeaderFooter": true,
    "printBackground": false,
    "format": "A0"
  }
}' > Hello.pdf


curl -X POST \
  http://127.0.0.1:3000/pdf?token=6R0W53R135510 \
  -H 'Cache-Control: no-cache' \
  -H 'Content-Type: application/json' \
  -d '{
  "html": "<h1>Hello World!</h1>",
  "options": {
    "displayHeaderFooter": true,
    "printBackground": false,
    "format": "A0"
  }
}' > Hello.pdf

curl -X POST \
  http://10.0.1.227:3000/pdf?token=6R0W53R135510 \
  -H 'Cache-Control: no-cache' \
  -H 'Content-Type: application/json' \
  -d '{
  "html": "<h1>Hello World!</h1>",
  "options": {
    "displayHeaderFooter": true,
    "printBackground": false,
    "format": "A0"
  }
}' > test1.pdf
```

```nu
http post -H [Cache-Control no-cache] -t application/json https://musical-space-yodel-r7grx7xx4qc5jr5-3000.app.github.dev/pdf?token=6R0W53R135510  {
  "url": "https://baidu.com/",
  "options": {
    "displayHeaderFooter": true,
    "printBackground": false,
    "format": "A0"
  }
} | save -rf test.pdf


http post -H [Cache-Control no-cache] -t 'application/json' 'https://musical-space-yodel-r7grx7xx4qc5jr5-3000.app.github.dev/pdf?token=6R0W53R135510' {
  "html": "<h1>Hello World!</h1>",
  "options": {
    "displayHeaderFooter": true,
    "printBackground": false,
    "format": "A0"
  }
} | save -fr test1.pdf
```
