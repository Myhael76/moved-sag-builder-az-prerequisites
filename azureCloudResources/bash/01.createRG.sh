#!/bin/bash

. ./setEnv.sh

echo "Creating the resource group $SAG_AZ_RG_NAME"

az group create \
--name $SAG_AZ_RG_NAME \
--subscription $SAG_AZ_SUBSCRIPTION_ID \
--location $SAG_AZ_LOCATION

echo "Created the resource group $SAG_AZ_RG_NAME, result $?"