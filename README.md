# Connecting Cloud Function with Serverless VPC access

## Create Network 
`create_network.sh`  
in case you don't want to use default VPC network, you can create custom  
mandatory step is to create firewall to allow communication to Redis database

## Create GCE instance
`create_vm.sh`

## Create Serverless VPC Access connector
`create_vpc_connector.sh`

## Deploy Cloud Function
`cf\deploy_cf.sh`