#!/bin/bash

AZ_STORAGE_URL=$(az storage account show \
    --subscription "$SAG_AZ_SUBSCRIPTION_ID" \
    --resource-group $SAG_AZ_RG_NAME \
    --name $SAG_AZ_SA_NAME \
    --query "primaryEndpoints.file" --output tsv | tr -d '"')
echo "export AZ_STORAGE_URL=${AZ_STORAGE_URL}"


AZ_SA_KEY=$(az storage account keys list \
    --subscription "$SAG_AZ_SUBSCRIPTION_ID" \
    --resource-group $SAG_AZ_RG_NAME \
    --account-name $SAG_AZ_SA_NAME \
    --query "[0].value" --output tsv | tr -d '"')
echo "export AZ_SA_KEY=${AZ_SA_KEY}"

AZ_SMB_PATH=$(echo $AZ_STORAGE_URL | cut -c7-$(expr length $AZ_STORAGE_URL))$SAG_AZ_SA_SHARE_NAME
echo "export AZ_SMB_PATH=${AZ_SMB_PATH}"


# sudo mount -t cifs $smbPath $mntPath -o username=$storageAccountName,password=$storageAccountKey,serverino