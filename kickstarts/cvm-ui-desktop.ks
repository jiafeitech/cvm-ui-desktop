%include base/fedora-live-xfce.ks

%packages

# rebranding
-fedora-logos*
-fedora-release*
generic-logos*
generic-release

# remove libreoffice
-libreoffice*
-unoconv

%end
