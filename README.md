# Docker_Scripts

This set of scripts established two docker containers based off of Debian Stretch.  One contains a web server running PHP that exposes HTTPS to the host and the other serves as a git server exposing SSH to the host and the other container.  When the host browses to https://localhost/ the webserver will clone the `admin` repo from the git server and execute all scripts ending in `sh` in the repo and display the results as a formatted webpage.

Debian was chosen as the base for the containers as this is my first time using docker outside of ready-made containers and wanted to control as many variables as possible.  Alpine Linux would be preferred for wide-scale deployments due to its small size.

!!!The deployment script was successfully tested on a vanilla install of 64-bit Debian 9.4.0, it will work in the majority of Debian based installations but may not work in all!!!

### Getting Started

The deployment of these containers in this automated form must be done as root

```
# git clone https://github.com/Craig9080/Docker_Scripts.git
# cd Docker_Scripts
# chmod +x setup.sh
# ./setup.sh
```
Following the successful establishment of the two containers you can browse to https://localhost/ to see the in-browser results of the execution of the scripts in the admin repo

### Adding Scripts

The best way to add scripts to connect to the git server via it's exposed SSH Server as demonstrated below

```
mkdir scripts_to_run
cd scripts_to_run
git init
git remote add origin ssh://admin@127.0.0.1:/repos/admin.git
git pull origin master
# Copy you scripts into this directory
git add .
git commit -m "Added Scripts"
git push origin master
```
If ever prompted for a password it will be the one previously agreed upon

