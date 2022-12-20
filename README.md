<p align="center">
    <img alt="cvm logo dark mode" src="https://raw.githubusercontent.com/jiafeitech/cvm-ui-desktop/main/assets/pixmaps/cvm-ui-desktop-logo-text-dark.png#gh-dark-mode-only">
    <img alt="cvm logo light mode" src="https://raw.githubusercontent.com/jiafeitech/cvm-ui-desktop/main/assets/pixmaps/cvm-ui-desktop-logo-text.png#gh-light-mode-only">
</p>

<h2 align="center">
    Cvm UI Desktop 5.1
</h2>
<h3 align="center">
    An operating system made by JIΛFEI (jiafeitech)
</h3>

# NO LONGER MAINTAINED

Cvm UI Desktop 5.1 (Arch linux based) is no longer maintained. This version is very unstable (can't even install on some VM)

Stay tuned for 5.2 (Fedora linux based) You can see the Fedora source code on the [main branch](https://github.com/jiafeitech/cvm-ui-desktop/tree/main)

# Get an image

You can download an ISO file from the [releases page](https://github.com/jiafeitech/cvm-ui-desktop/releases)

# Building an image

This operating system is based on Arch Linux. So building with Arch linux is recommended

Virtual machine, [Docker container](https://hub.docker.com/_/archlinux) or [Arch WSL](https://github.com/yuk7/ArchWSL) should work.

## Installing building dependencies

Install these packages:

- [archiso](https://archlinux.org/packages/extra/any/archiso) a highly-customizable tool for building Arch Linux live CD/USB ISO images.
- [Chaotic-AUR](https://aur.chaotic.cx) a repo for AUR packages.

```bash
# Using pacman to install archiso on Arch linux
sudo pacman -S archiso
```

for Chaotic-AUR, follow their instructions on [their website](https://aur.chaotic.cx)

## Building

Make sure you have root/sudo access

Just run the build script with sudo

```bash
# Give executable permission
sudo chmod +x ./build.sh

# Build!
sudo ./build.sh
```

Grab a snack and relax while the script is building an image. This will take 30 minutes to an hour.

You can see the image in `out` folder if it build successfully!

## Cleanup

Run the cleanup script with sudo

```bash
# Give executable permission
sudo chmod +x ./cleanup.sh

# Cleanup
sudo ./cleanup.sh
```

This will delete `work` folder and `out` folder

The cleanup script runs everytime when you run the build script

# Bugs and ideas

If you have an idea or found a bug, feel free to open an issue [here](https://github.com/jiafeitech/cvm-ui-desktop/issues/new)!
