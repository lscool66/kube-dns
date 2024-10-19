```sh
docker login --username=lscool66@outlook.com registry.cn-beijing.aliyuncs.com

docker pull --platform=linux/arm64 ghcr.io/browserless/chromium
docker tag ghcr.io/browserless/chromium registry.cn-beijing.aliyuncs.com/lscool66/chromium:latest-arm64
docker push registry.cn-beijing.aliyuncs.com/lscool66/chromium:latest-arm64


docker pull --platform=linux/amd64 ghcr.io/browserless/chromium
docker tag ghcr.io/browserless/chromium registry.cn-beijing.aliyuncs.com/lscool66/chromium:latest-amd64
docker push registry.cn-beijing.aliyuncs.com/lscool66/chromium:latest-amd64
```


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

docker run \
  --rm \
  -p 3000:3000 \
  -e "CONCURRENT=10" \
  -e "TOKEN=6R0W53R135510" \
  ghcr.io/browserless/chromium


  docker run \
  --rm \
  -p 3000:3000 \
  -e "CONCURRENT=10" \
  registry.cn-beijing.aliyuncs.com/lscool66/chromium:latest-amd64


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
}' > test1.pdf

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