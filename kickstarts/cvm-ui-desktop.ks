%include base/fedora-live-workstation.ks

%packages

# rebranding
-fedora-logos*
-fedora-release
-fedora-release-common
-fedora-release-workstation
generic-release
generic-release-common
generic-release-notes
generic-logos*

# remove libreoffice
-libreoffice*
-unoconv

%end
