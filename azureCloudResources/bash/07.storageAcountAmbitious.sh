. ./setEnv.sh

# TODO: this is an initial attempt at limiting the access to the VMSS subnet only...
echo "Creating the storage account $SAG_AZ_SA_NAME..."

az storage account create \
  --name $SAG_AZ_SA_NAME \
  --resource-group "$SAG_AZ_RG_NAME" \
  --subscription "$SAG_AZ_SUBSCRIPTION_ID" \
  --location $SAG_AZ_LOCATION \
  --sku Standard_LRS \
  --kind StorageV2 \
  --access-tier "Hot" \
  --min-tls-version "TLS1_2" \
  --https-only false \
  --public-network-access "Disabled" \
  --allow-blob-public-access false \
  --allow-shared-key-access true \
  --allow-cross-tenant-replication false \
  --bypass "AzureServices" \
  --default-action "Deny" \
  --encryption-key-source "Microsoft.Storage" \
  --encryption-key-type-for-queue "Account" \
  --encryption-key-type-for-table "Account" \
  --require-infrastructure-encryption false \
  --vnet-name "$SAG_AZ_VNET_NAME" \
  --subnet "$SAG_AZ_VM_SUBNET_NAME" \
  --publish-internet-endpoints false \
  --publish-microsoft-endpoints true \
  --routing-choice "MicrosoftRouting" \
  --tags "Purpose=DevOps"

echo "Created the storage account $SAG_AZ_SA_NAME, result $?"

az storage account show \
    --subscription "$SAG_AZ_SUBSCRIPTION_ID" \
    --resource-group $SAG_AZ_RG_NAME \
    --name $SAG_AZ_SA_NAME \
    --query "primaryEndpoints.file" --output tsv | tr -d '"'