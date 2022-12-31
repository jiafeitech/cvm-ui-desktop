<p align="center">
    <img alt="cvm logo dark mode" src="https://raw.githubusercontent.com/jiafeitech/cvm-ui-desktop/main/assets/cvm-ui-desktop-logo-text-dark.png#gh-dark-mode-only">
    <img alt="cvm logo light mode" src="https://raw.githubusercontent.com/jiafeitech/cvm-ui-desktop/main/assets/cvm-ui-desktop-logo-text.png#gh-light-mode-only">
</p>

<h2 align="center">
    Cvm UI Desktop 5.2
</h2>
<h3 align="center">
    An operating system made by JIΛFEI (jiafeitech)
</h3>

## Get an image

You can download an ISO file from the [releases page](https://github.com/jiafeitech/cvm-ui-desktop/releases)

## Building an image

You have to build with Debian. Using Ubuntu or other operating system doesn't work.

Virtual machine, [Docker container](https://hub.docker.com/_/debian) or [Debian WSL](https://www.microsoft.com/store/productId/9MSVKQC78PK6) should work.

### Building

Make sure you have root/sudo access

Just run the build script and it will do all works for you.

```
sudo ./build.sh
```

Grab a snack and relax while the script is building an image. This will take 30 minutes to an hour.

The built ISO file will be in `builds/amd64`

### Cleanup

Just remove `tmp` and `builds` folder

```bash
sudo rm -rvf tmp
sudo rm -rvf builds
```

> Don't forgot sudo

### Building with Docker

Building with Docker is also possible if you don't want to install Debian and want to make it quick!

Just [install Docker](https://docs.docker.com/engine/install/) and run this:

```bash
docker run --privileged -i -v /proc:/proc \
    -v ${PWD}:/working_dir \
    -w /working_dir \
    debian:latest \
    /bin/bash -s etc/terraform.conf < build.sh
```

Of course, the built ISO file will be in `builds/amd64`

## Bugs and ideas

If you have an idea or found a bug, feel free to open an issue [here](https://github.com/jiafeitech/cvm-ui-desktop/issues/new)!

## Credits

Go to [CREDITS.md](CREDITS.md)
