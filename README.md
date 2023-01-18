# Butterfly docker image
[![Project Archived](https://docs.outscale.com/fr/userguide/_images/Project-Archived-red.svg)](https://docs.outscale.com/en/userguide/Open-Source-Projects.html)

This image is made for testing [Butterfly](https://github.com/outscale/butterfly) API, not for real packet switching.

## Use Butterfly docker image

```
docker pull outscale/butterfly
docker run -p 9999:9999 -it --rm outscale/butterfly
```

You can now use butterfly cli to test Butterfly's API.

## Build a new docker image

```
docker build -t outscale/butterfly:latest .
```
## Contributions

No contribution is accepted at the moment on the project

