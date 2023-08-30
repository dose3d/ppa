dpkg-scanpackages --multiversion . > Packages
gzip -k -f Packages

apt-ftparchive release . > Release
gpg --default-key dose3d@agh.edu.pl -abs -o - Release > Release.gpg
gpg --default-key dose3d@agh.edu.pl --clearsign -o - Release > InRelease

