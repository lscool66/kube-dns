```sh
# arm64
docker pull appvantage/html2pdf-service:2.1.2-chromium
# amd64
docker pull appvantage/html2pdf-service:2.1.2

docker run --rm -p 3000:3000 appvantage/html2pdf-service:2.1.2


http post -t 'application/json' 'https://ominous-couscous-97x6gwpr4jqc7qxx-3000.app.github.dev/' {
  "html": "<h1>Hello World!</h1>",
  "options":  {
    emulateScreenMedia: true,
    viewport: { width: 1600, height: 1200 },
    waitUntil: 'networkidle2',
    pdf: { format: 'a0', printBackground: true },
  }
} | save -fr hello.pdf

```
```
html2pdf-service
This service provides a simple API to print out PDF from HTML documents over a Restful API. The rendering is using puppeteer as its core.

The Appvantage distinction
Appvantage has spent 10 years in the Automotive industry with a variety of key companies globally. With projects spanning across from Sales to After-Sales in the customer lifecycle, we have the knowledge and capability to ensure quality and quick-to-market delivery.

Join us! View our available positions.

Getting started
Pull the docker image to run the service

docker pull appvantage/html2pdf-service:latest
Then launch a container

docker run --rm -p 3000:3000 appvantage/html2pdf-service:latest
The web server will by default listen on the port 3000, it may be changed with the environment variable PORT.

You may now call the API

API
The API is a simple route on / expecting a request on POST method with a JSON payload. The response would be a PDF file. The CURL request could be as the following :

curl -i \
    -H "Content-Type: application/json" \
    -X POST \
    -d "{\"html\":\"<div>hello world</div>\"}" \
    http://localhost:3000/
The JSON payload should be as the following object

Path	Type	Description
html	String	HTML to print out as a PDF (mandatory)
options	Object	Settings for puppeter (optional)
options.emulateScreenMedia	Boolean	Emulate screen media (default: false)
options.viewport	Object	Viewport settings (default: 1600x1200)
options.waitUntil	String	Wait until setting (default: networkidle2)
options.pdf	Object	PDF settings (default: A4 with background)
```