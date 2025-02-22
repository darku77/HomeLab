# DOCKER

## HomeLab Management

### Ofelia
* Ofelia - a job scheduler
* https://github.com/mcuadros/ofelia

### Ouroboros
* Keep docker images updated
* https://github.com/pyouroboros/ouroboros
* https://hub.docker.com/r/pyouroboros/ouroboros

### Dozzle
* Log viewer for docker containers
* https://dozzle.dev/
* https://github.com/amir20/dozzle
* https://hub.docker.com/r/amir20/dozzle/

### Yacht
* A container management UI with a focus on templates and 1-click deployments.
* https://yacht.sh/

### Dash
* a modern server dashboard
* https://getdashdot.com/
* https://github.com/MauriceNino/dashdot

### Uptime Kuma
* A self-hosted monitoring tool similar to "Uptime Robot"
* https://uptime.kuma.pet/
* https://github.com/louislam/uptime-kuma
* https://hub.docker.com/r/louislam/uptime-kuma

### Nginx Proxy Manager
* Expose your services easily and securely
* https://nginxproxymanager.com/
* https://github.com/NginxProxyManager/nginx-proxy-manager

### Homarr
* A modern and lightweight homepage for your server
* https://homarr.dev/
* https://github.com/ajnart/homarr/

## Speed Test Server

* Used speed test cli to test speed, stores data in influxdb timeseries, displays it Grafana

### Grafana
* Your application observability
* https://grafana.com/
* https://hub.docker.com/r/grafana/grafana

### InfluxDB
* InfluxDB. - It's About Time.
* https://www.influxdata.com/
* https://hub.docker.com/_/influxdb

### Speedtest
* Internet connection measurement for developers
* https://www.speedtest.net/apps/cli
* https://github.com/frdmn/docker-speedtest-grafana

## Download

### qBittorrent
* Web Client 
* https://hub.docker.com/r/linuxserver/qbittorrent

## Smart Home

### HomeBridge
* HomeKit support for the impatient.
* https://homebridge.io/
* https://github.com/oznu/docker-homebridge

## Mail

### Poste.io
* Poste.io ~ complete mail server
* https://poste.io/
* https://hub.docker.com/r/analogic/poste.io/
* **Does not work on RPI/ARM**

## Movies

### Radarr
* Radarr is a movie collection manager for Usenet and BitTorrent users.
* https://radarr.video/
* https://hub.docker.com/r/linuxserver/radarr


### Bazarr
* Bazarr is a companion application to Sonarr and Radarr that manages and downloads subtitles based on your requirements.
* https://www.bazarr.media/
* https://github.com/morpheus65535/bazarr
* https://hub.docker.com/r/linuxserver/bazarr

### PLEX
* Meet your TV concierge.
* https://www.plex.tv/
* https://hub.docker.com/r/linuxserver/plex

### PLEX TRAKT SYNC
* https://github.com/Taxel/PlexTraktSync


## Troubleshooting

### Connect to Docker remote from IntelliJ IDEA (e.g RPI)
 * Setup a SSH Configuration: https://www.jetbrains.com/help/idea/create-ssh-configurations.html
 * On the remote where docker is running:
   * Run to edit the file: `sudo nano /etc/default/docker`
   * Using the `-H` flag in the `DOCKER_OPTS` variable in the `/etc/default/docker` file.
    ````
    DOCKER_OPTS="-H tcp://0.0.0.0:80"
    ````
   * Run `sudo usermod -aG docker $USER`
 * Explanations:
   * `usermod`: This is the command for modifying user accounts.
   * `-a`: This flag tells `usermod` to add the specified group to the user's existing groups (instead of replacing them).
   * `-G docker`: This specifies the name of the group to add the user to, which is "docker" in this case.
   * `$USER`: This is a shell variable that expands to the username of the currently logged-in user. The command is replacing `$USER` with the actual username of the user account you want to modify.
   * To list all available groups: `sudo getent group`
   * To list groups associated to the current user: `groups $USER`

## RPI
### Identify model
   * ssh into rpi
   * `cat /proc/cpuinfo`
   * Search for `Revision` and `Model` 
   * Go to https://elinux.org/RPi_HardwareHistory
   * Search for `revision` there
### Benchmark
```
   sudo curl https://raw.githubusercontent.com/TheRemote/PiBenchmarks/master/Storage.sh | sudo bash
```

