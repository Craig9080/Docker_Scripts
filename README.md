# Docker_Scripts

This set of scripts established two docker containers based off of Debian Stretch.  One contains a web server running PHP that exposes HTTPS to the host and the other serves as a git server.  When the host browses to https://localhost/ the webserver will clone the `admin` repo from the git server and execute all scripts ending in `sh` in the repo and display the results as a formatted webpage.

!!!This is a highly unsafe practice and should REALLY never be done!!!

### Getting Started

The deployment of these containers in this automated form must be done as root

```# git clone https://github.com/Craig9080/Docker_Scripts.git
# cd Docker_Scripts
# chmod +x setup.sh
# ./setup.sh
```
Following the successful establishment of the two containers you can browse to https://localhost/ to see the in-browser execution of the scripts in the admin repo

### Adding Scripts

The best way to add scripts to the repo and see them executed is to edit them at thier pre-staged location on the git server (i.e. NOT the actual location of the repo on the git server).  To do this you should run the command `docker containers ls` and see which container holds the git server which will have the image `gitserver:latest`. The name will be all the way to the right of the chart.  Use this name and execute the following command to get a shell on that machine: `docker exec -ti <name> bash`.  You now have a shell on the git server! Execute the following steps to add any scripts you want into the `/project` folder which has already been established as a 

