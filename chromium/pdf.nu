# http post -H [Cache-Control no-cache] -t application/json http://10.142.1.156:3000/pdf?token=6R0W53R135510  {
#   "url": "https://www.baidu.com",
#   "options": {
#     "displayHeaderFooter": true,
#     "printBackground": false,
#     "format": "A3"
#   }
# } | save -rf baidu.pdf


http post -H [Cache-Control no-cache] -m 60 -t 'application/json' 'http://10.142.1.156:3000/pdf?token=6R0W53R135510' {
  "html": "<h1>Hello World!</h1>",
  "options": {
    "displayHeaderFooter": true,
    "printBackground": false,
    "format": "A4"
  }
} | save -fr hello.pdf