%include base/fedora-live-xfce.ks

# cvm-ui-desktop copr repo
repo --name=cvm-ui-desktop --baseurl=https://download.copr.fedorainfracloud.org/results/podter/cvm-ui-desktop/fedora-37-$basearch

%packages

# rebranding
-fedora-logos*
-fedora-release*
cvm-ui-desktop-logos
cvm-ui-desktop-release

%end
