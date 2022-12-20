<p align="center">
    <img alt="cvm logo dark mode" src="https://raw.githubusercontent.com/jiafeitech/cvm-ui-desktop/main/assets/pixmaps/cvm-ui-desktop-logo-text-dark.png#gh-dark-mode-only">
    <img alt="cvm logo light mode" src="https://raw.githubusercontent.com/jiafeitech/cvm-ui-desktop/main/assets/pixmaps/cvm-ui-desktop-logo-text.png#gh-light-mode-only">
</p>

<h2 align="center">
    Cvm UI Desktop 5.2
</h2>
<h3 align="center">
    An operating system made by JIΛFEI (jiafeitech)
</h3>

# Get an image

You can download an ISO file from the [releases page](https://github.com/jiafeitech/cvm-ui-desktop/releases)

# Building an image

This operating system is based on Fedora. So building with Fedora is recommended

Virtual machine, [Docker container](https://hub.docker.com/_/fedora) or [Fedora WSL](https://apps.microsoft.com/store/detail/fedora-remix-for-wsl/9N6GDM4K2HNC) should work.

## Installing building dependencies

Install these packages:

- [mock](https://github.com/rpm-software-management/mock/) a 'simple' chroot build environment manager.
- [pykickstart](https://github.com/pykickstart/pykickstart) a Python 2 and Python 3 library consisting of a data representation of kickstart files, a parser to read files into that representation, and a writer to generate kickstart files.

```bash
# Using dnf to install mock and pykickstart on Fedora
sudo dnf install mock pykickstart

sudo usermod -a -G mock $(whoami)
```

## Building

Make sure you have root/sudo access

If your system is using SELinux, it needs to be set to Permissive mode while running lorax:

```bash
sudo setenforce 0
```

Flatten a Kickstart:

```bash
ksflatten --config kickstarts/cvm-ui-desktop.ks -o flat-cvm-ui-desktop.ks --version F37
```

Set up mock build environment:

```bash
mock -r ./cvm-ui-desktop-5.2-x86_64.cfg --init
mock -r ./cvm-ui-desktop-5.2-x86_64.cfg --install lorax-lmc-novirt pykickstart
```

Transfer flat kickstart file to mock build environment:

```bash
mock -r ./cvm-ui-desktop-5.2-x86_64.cfg --copyin flat-cvm-ui-desktop.ks /
```

Enter mock environment:

```bash
mock -r ./cvm-ui-desktop-5.2-x86_64.cfg --shell --old-chroot --enable-network
```

From within mock environment, Run this to create the Live Image:

```bash
livemedia-creator --ks /flat-cvm-ui-desktop.ks --no-virt --resultdir /var/lmc --project Cvm-UI-Desktop-Live --make-iso --volid Cvm-UI-Desktop-5.2 --iso-only --iso-name Cvm-UI-Desktop-5.2_x86_64.iso --releasever 37 --macboot
```

Grab a snack and relax while the script is building an image. This will take 30 minutes to an hour.

Exit mock environment when build completes:

```bash
exit
```

Move built ISO from mock location to whatever location you want:

```bash
mock -r ./cvm-ui-desktop-5.2-x86_64.cfg --copyout "/var/lmc/*.iso" .
```

## Cleanup

Run this to clean up mock environment:

```bash
mock -r ./cvm-ui-desktop-5.2-x86_64.cfg --scrub=all
```

Remove flatten kickstart file and ISO:

```bash
rm -vf flat-cvm-ui-desktop.ks
rm -vf *.iso
```

If your system is using SELinux, you can set it back to enforcing:

```bash
sudo setenforce 1
```

# Bugs and ideas

If you have an idea or found a bug, feel free to open an issue [here](https://github.com/jiafeitech/cvm-ui-desktop/issues/new)!

# Credits

Go to [CREDITS.md](CREDITS.md)
