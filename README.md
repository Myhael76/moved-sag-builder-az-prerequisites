# Software AG Azure Pipeline Builders Prerequisite Helper

The subfolder azureCloudResources contains the commands to prepare the virtual machine scale set (VMSS) that the pipleines normally use.

A typical use of these scripts is the following

- open a browser to [Azure portal](https://portal.azure.com)
- connect with a user having owner/admin permissions to a subscription
- open a bash cloud shell
- clone the current repository
- copy `setEnvExample.sh` into `setEnv.sh`
- modify `setEnv.sh` according to the your environment
- run the bash scripts in order, if necessary (e.g. if the resource group is given, skip `01.createRG.sh`)

The subfolder empowerSdc prepares a "secure" file to be uploaded into the dev portal project's library.

- on any machine copy or download `Example.setSUIFEmpowerCredentials.sh`
- rename it to `setSUIFEmpowerCredentials.sh`
- edit `setSUIFEmpowerCredentials.sh` and write your empower user and password
- upload it as a secure file into your devops project
