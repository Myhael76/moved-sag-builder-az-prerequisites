#!/bin/bash

. ./setEnv.sh

echo "Creating the local ssh keys..."

ssh-keygen -m PEM -t rsa -b 4096

echo "Created the local ssh keys"
