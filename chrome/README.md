```sh
docker run \
  --rm \
  -p 3000:3000 \
  -e "CONCURRENT=10" \
  -e "TOKEN=6R0W53R135510" \
  ghcr.io/browserless/chromium


  docker run \
  --rm -it \
  -p 3000:3000 \
  -e "CONCURRENT=10" \
  -e "TOKEN=6R0W53R135510" \
  registry.cn-beijing.aliyuncs.com/lscool66/chromium:amd64


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
}' > test.pdf



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