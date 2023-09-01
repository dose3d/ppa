cd ubuntu
dpkg-scanpackages --multiversion . > Packages
gzip -k -f Packages

apt-ftparchive release . > Release
gpg --default-key nkg@agh.edu.pl -abs -o - Release > Release.gpg
gpg --default-key nkg@agh.edu.pl --clearsign -o - Release > InRelease
