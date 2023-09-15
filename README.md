# G4RT PPA repository

## About
The Monte Carlo Simulation Software packages to be installed on Debian-based Linux distributions (such as Ubuntu).  
The software is being developed under the Dose-3D project with the financial support of the Team-NET programme (see [project Dose-3D web page](https://dose3d.fis.agh.edu.pl/en/projekt-dose-3d-z-programu-team-net-fnp-eng/)).


## Prerequsities
Assumed to be installed in the system:  
* Miniconda, [https://docs.conda.io](https://docs.conda.io/en/latest/miniconda.html)
* Geant4, [https://geant4.web.cern.ch](https://geant4.web.cern.ch/)

### Customized WSL Ubuntu distribution
The WSL Ubuntu distribution is available with all prerequisities already installed!  
Get it from: [https://figshare.com/geant4-rt-simulation-platform](https://figshare.com/s/7484a32327c158599bc7)


WSL image installation instructions:  
[Installing custom WSL distribution](share/wsl-ubuntu-22.04.md)

What you need to do is the conda env creation (the name have to be exactly `g4rt`):
```
conda create --name g4rt --file share/conda_env.yml
conda env create --name g4rt --file shareconda_env.yml
```

## Packages installation
### IMPORTANT: 
You have to activate the `g4rt` conda environment first!

### Import repo and siging key:
NOTE: in above mentioned WSL distribution is already done!
```
curl -s --compressed "https://dose3d.github.io/ppa/ubuntu/KEY.gpg" | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/g4rt.gpg >/dev/null
sudo curl -s --compressed -o /etc/apt/sources.list.d/g4rt.list "https://dose3d.github.io/ppa/g4rt.list"

```
### Update the package lists and install G4RT with its webinterface from this repo:

```
sudo apt update
sudo apt install g4rt g4rt-webui
```
Note: Once the packages are already installed, above command will try to update them to latest version.

### Installing issues
See: [share/install_issues.md](share/install_issues.md)


### Authors:
`Michał Niedźwiecki`, `Paweł Matejski`, `Jakub Hajduga`, `Bartłomiej Rachwał`

### Source code
The PPA packages are being created on top of the:
* https://git.plgrid.pl/projects/TND3D/repos/g4rt
* https://git.plgrid.pl/projects/TND3D/repos/g4rt-webui
