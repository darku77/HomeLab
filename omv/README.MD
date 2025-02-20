# Install Open Media Vault

* [OMV Installation Guide](https://pimylifeup.com/raspberry-pi-openmediavault/)
* [OMV7 raspberry pi install](https://wiki.omv-extras.org/doku.php?id=omv7:raspberry_pi_install)

```bash
   sudo apt update
   sudo apt upgrade

   wget -O - https://raw.githubusercontent.com/OpenMediaVault-Plugin-Developers/installScript/master/preinstall | sudo bash

   sudo reboot

   wget -O - https://raw.githubusercontent.com/OpenMediaVault-Plugin-Developers/installScript/master/install | sudo bash

  sudo reboot
 ```

## Docker install
* [Docker install](https://wiki.omv-extras.org/)

```bash

wget -O - https://github.com/OpenMediaVault-Plugin-Developers/packages/raw/master/install | sudo bash 

```
* From omv-extras menu, check `docker repo` checkbox | Save
* Install from omv extras: [omv7_plugins:docker_compose](https://wiki.omv-extras.org/doku.php?id=omv7:omv7_plugins:docker_compose)
* Install from omv extras: [omv7_plugins:scripts](https://wiki.omv-extras.org/doku.php?id=omv7:omv7_plugins:scripts)

## Docker install & Portainer
```shell
  curl -fsSL https://get.docker.com | sudo sh
    
  sudo usermod -aG docker pi
    
  sudo docker run --name portainer --restart always -d \
  -p 9000:9000 \
  -p 9443:9443 \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v portainer_data:/data \
  portainer/portainer-ce:linux-arm
```
## Create appdata folder
```shell
  sudo mkdir -p /appdata
  sudo chmod 777 /appdata
  sudo mkdir -p /appdata_backup
  sudo chmod 777 /appdata_backup
```

* Copy backup content