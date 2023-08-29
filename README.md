# Dose3D PPA repository

Import repo and siging key:

```
curl -s --compressed "https://dose3d.github.io/ppa/KEY.gpg" | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/dose3d.gpg >/dev/null
sudo curl -s --compressed -o /etc/apt/sources.list.d/dose3d.list "https://dose3d.github.io/ppa/dose3d.list"
```

Install Webinterface from repo:

```
sudo apt update
sudo apt install dose3d-webinterface
```
