# Dose3D PPA repository

See: https://git.plgrid.pl/projects/TND3D/repos/dose3d-geant4-linac

Import repo and siging key:

```
curl -s --compressed "https://dose3d.github.io/ppa/ubuntu/KEY.gpg" | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/g4rt.gpg >/dev/null
sudo curl -s --compressed -o /etc/apt/sources.list.d/g4rt.list "https://dose3d.github.io/ppa/ubuntu/g4rt.list"
```

Install Webinterface and G4RT from repo:

```
sudo apt update
sudo apt install dose3d-webinterface g4rt
```
