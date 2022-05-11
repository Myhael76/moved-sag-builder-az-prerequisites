#!/bin/sh

# Mandatory
export SAG_AZ_SUBSCRIPTION_ID=yourSubscriptionID
export SAG_AZ_RG=AzDevOpsAgentsResources
#export SAG_AZ_ADMIN_USERNAME=SagDevOps
export SAG_AZ_LOCATION=yourLocation
# note, obtain this id with the command
# az ad sp list --display-name "{display name}}"
export SAG_SERVICE_PRINCIPAL_ID=yourSpIdHere

#Optional
export SAG_AZ_RG_NAME=AzDevOpsAgentsResources
export SAG_AZ_NSG_NAME=AzDevOpsAgentsNSG
export SAG_AZ_VNET_NAME=AzDevOpsAgentsNSGVnet
export SAG_AZ_DEFAULT_CIDR='10.0.0.0/16'
export SAG_AZ_VM_SUBNET_NAME=AzDevOpsAgentsSubnet
export SAG_AZ_VMSS_NAME=AzDevopsAgentsVmss
export SAG_AZ_VMSS_IMAGE="Canonical:0001-com-ubuntu-confidential-vm-focal:20_04-lts-gen2:latest"
# storage account name must be between 3 and 24 characters in length and use numbers and lower-case letters only.
export SAG_AZ_SA_NAME=azdevopsagentssa
export SAG_AZ_SA_SHARE_NAME=azdevopsagentssashare

# ACR name must contain only small caps
export SAG_AZ_ACR_NAME=azdevopsacr
