#!/bin/sh
rm -r /tmp/admin
cd /tmp
ssh-agent bash -c 'ssh-add /SSH_Priv.key; git clone ssh://admin@172.99.1.2:/repos/admin.git'
