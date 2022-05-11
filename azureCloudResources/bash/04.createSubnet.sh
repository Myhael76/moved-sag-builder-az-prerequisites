#!/bin/bash

. ./setEnv.sh

# Seems not necessary, but may be used to rebuild the subnet
echo "Creating the subnet $SAG_AZ_VM_SUBNET_NAME"

az network vnet subnet create --name $SAG_AZ_VM_SUBNET_NAME \
--subscription $SAG_AZ_SUBSCRIPTION_ID \
--resource-group $SAG_AZ_RG_NAME \
--vnet-name $SAG_AZ_VNET_NAME \
--address-prefixes $SAG_AZ_DEFAULT_CIDR \
--network-security-group $SAG_AZ_NSG_NAME \
--disable-private-endpoint-network-policies

# --disable-private-endpoint-network-policies necessary for subnet access

echo "Created the subnet $SAG_AZ_VM_SUBNET_NAME, result $?"