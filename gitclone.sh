#!/bin/sh
rm -r /admin
ssh-agent bash -c 'ssh-add /SSH_Priv.key; git clone ssh://admin@172.17.0.2:/repos/admin.git'
