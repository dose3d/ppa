# G4RT PPA repository

## About
The Monte Simulation Software packages to be installed on Debian-based Linux distributions (such as Ubuntu).  
The software is being developed under the Dose-3D project with the financial support of the Team-NET programme (see [project Dose-3D web page](https://dose3d.fis.agh.edu.pl/en/projekt-dose-3d-z-programu-team-net-fnp-eng/)).


## Prerequsities
Assumed to be installed in the system:  
* Miniconda, [https://docs.conda.io](https://docs.conda.io/en/latest/miniconda.html)
* Geant4, [https://geant4.web.cern.ch](https://geant4.web.cern.ch/)

NOTE: Once the Geant4 installation require the ROOT ([https://root.cern](https://root.cern/)), the latter can be installed with `conda`, see [https://anaconda.org/conda-forge/root](https://anaconda.org/conda-forge/root/). After all, the project requirements file can be utilized to setup the environment on top of which the Geant4 installation can be performed: [conda_env.yml](https://git.plgrid.pl/projects/TND3D/repos/dose3d-geant4-linac/browse/conda_env.yml?at=refs%2Fheads%2FTNSIM-260-init-final-app-logger) (TODO: Update the LINK!)

### Customized WSL Ubuntu distribution
The WSL Ubuntu distribution is available with all prerequisities and this ppa repositories already installed! Get it from [https://figshare.com/geant4-rt-simulation-platform](https://figshare.com/s/7484a32327c158599bc7)

WSL image installation instructions:  
[Installing custom WSL distribution](share/wsl-ubuntu-22.04.md)

## Packages installation
### Import repo and siging key:
NOTE: in above mentioned WSL distribution is already done!
```
curl -s --compressed "https://dose3d.github.io/ppa/ubuntu/KEY.gpg" | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/g4rt.gpg >/dev/null
sudo curl -s --compressed -o /etc/apt/sources.list.d/g4rt.list "https://dose3d.github.io/ppa/g4rt.list"
```
### Update the package lists on your Linux system:
```
sudo apt update
```

### Install G4RT and its webinterface from repo:

```
sudo apt install g4rt g4rt-webui
```
Note: Once the packages are already installed, above command will try to update them to latest version.


### Authors:
`Michał Niedźwiecki`, `Paweł Matejski`, `Jakub Hajduga`, `Bartłomiej Rachwał`

### Source code
The PPA packages are being created on top of the:
* https://git.plgrid.pl/projects/TND3D/repos/g4rt
* https://git.plgrid.pl/projects/TND3D/repos/g4rt-webui
