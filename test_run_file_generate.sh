#!/bin/sh

cp test_run_generic.yaml test_run.yaml
for ARGUMENT in "$@"
do
   KEY=$(echo $ARGUMENT | cut -f1 -d=)

   KEY_LENGTH=${#KEY}
   VALUE="${ARGUMENT:$KEY_LENGTH+1}"
   
   echo "$KEY"="$VALUE"
   sed -i "s|$KEY|$VALUE|g" ./test_run.yaml
   export $KEY=$VALUE
done
MACADDRESS_VALUE=${MAC_ADDRESS}
MACADDRESS_VALUE=$(echo $MACADDRESS_VALUE | tr '[:lower:]' '[:upper:]')
MAC_LOWER_ADDRESS=$(echo $MACADDRESS_VALUE | tr '[:upper:]' '[:lower:]')
sed -i "s|MAC_LOWER_ADDRESS|$MAC_LOWER_ADDRESS|g" ./test_run.yaml
sed -i "s|MACADDRESS_VALUE|$MACADDRESS_VALUE|g" ./test_run.yaml
chmod 777 ./test_run.yaml

