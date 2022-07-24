#!/bin/bash

#echo "### Ping-Ansible ###"

#Master

echo "### Ping-Master ###"

ansible master -m ping

#NFS

echo "### Ping-NFS ###"

ansible nfs -m ping

#Workers

echo "### Ping-Workers ###"

ansible workers -m ping
