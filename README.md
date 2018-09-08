This project is a Docker image based on Ubuntu 18.04, with Poco installed.

Note that this is not intended for general use, as it has several components
missing from Poco, which Aesel does not need (specifically MySQL and
ODBC connectors).

## Build

docker build -t aostreetart/docker-poco-base:latest .

## Using the image

FROM aostreetart/docker-poco-base:latest
