%include base/fedora-live-xfce.ks

# cvm-ui-desktop copr repo
repo --name=cvm-ui-desktop --baseurl=https://download.copr.fedorainfracloud.org/results/podter/cvm-ui-desktop/fedora-37-$basearch

%packages

# rebranding
-fedora-logos*
-fedora-release*
cvm-ui-desktop-logos
cvm-ui-desktop-release
cvm-plymouth-theme

%end

%post

# Edit fedora-welcome to use Cvm UI Desktop
sed -i 's/Fedora/Cvm UI Desktop/g' /usr/share/anaconda/gnome/fedora-welcome
cat << EOF >>/home/jiafei/Desktop/liveinst.desktop
visibleName=Install Cvm UI Desktop
EOF

%end
