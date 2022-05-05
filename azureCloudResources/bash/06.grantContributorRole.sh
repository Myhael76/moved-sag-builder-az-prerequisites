#!/bin/bash

. ./setEnv.sh

# Seems not necessary, but may be used to rebuild the subnet
echo "Granting Contributor role ..."

az role assignment create --assignee "$SAG_SERVICE_PRINCIPAL_ID" \
--role "Contributor" \
--resource-group "$SAG_AZ_RG_NAME" \
--subscription "$SAG_AZ_SUBSCRIPTION_ID"

echo "Granted Contributor role, result $?"