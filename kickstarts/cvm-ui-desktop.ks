%include base/fedora-live-workstation.ks

%packages

# rebranding
-fedora-logos*
-fedora-release*
generic-release*
generic-logos*

# remove libreoffice
-libreoffice*
-unoconv

%end
