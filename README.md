# G4RT PPA repository

## About
The Monte Simulation Software packages to be installed on Debian-based Linux distributions (such as Ubuntu).

The software is being developed within the Dose-3D project being supported by Team-NET grant ([see project web page.](https://dose3d.fis.agh.edu.pl/en/projekt-dose-3d-z-programu-team-net-fnp-eng/))


## Prerequsities
Software assumed to be installed in the system:
* Miniconda, [https://docs.conda.io](https://docs.conda.io/en/latest/miniconda.html)
* Geant4, [https://geant4.web.cern.ch](https://geant4.web.cern.ch/)

NOTE: Once the Geant4 installation require the ROOT ([https://root.cern](https://root.cern/)), the latter can be installed with `conda`, see [https://anaconda.org/conda-forge/root](https://anaconda.org/conda-forge/root/)! After all, this project requirements file can be utilized to setup the environment on top of which the Geant4 installation can be performed: [conda_env.yml](https://git.plgrid.pl/projects/TND3D/repos/dose3d-geant4-linac/browse/conda_env.yml?at=refs%2Fheads%2FTNSIM-260-init-final-app-logger) (TODO: Update the LINK!)

### Customized WSL Ubuntu distribution
The WSL Ubuntu distribution is available with all prerequisities already installed! Get it from [https://figshare.com/wsl-ubuntu-g4rt](https://figshare.com/) (TODO: Update the LINK!)

How-To: [Installing custom WSL distribution with Geant4 and Anaconda](https://git.plgrid.pl/projects/TND3D/repos/dose3d-geant4-linac/browse/docs/wsl-ubuntu-22.04.md?at=refs%2Fheads%2FTNSIM-260-init-final-app-logger) (TODO: Update the LINK!)

## Packages installation
### Import repo and siging key:

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
* PyDose3D package: [pydose3d](https://git.plgrid.pl/projects/TND3D/repos/pydose3d/browse) (TODO: Update the LINK!)
* G4RT app: [g4rt](https://git.plgrid.pl/projects/TND3D/repos/dose3d-geant4-linac/browse?at=TNSIM-260-init-final-app-logger) (TODO: Update the name and the LINK!) 
* G4RT webui [g4rt-webui](https://git.plgrid.pl/projects/TND3D/repos/webinterface/browse) (TODO: Update the LINK!)
