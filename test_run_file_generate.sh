#!/bin/sh

#!/bin/sh

cp test_run_generic.yaml test_run.yaml
for ARGUMENT in "$@"
do
   KEY=$(echo $ARGUMENT | cut -f1 -d=)

   KEY_LENGTH=${#KEY}
   VALUE="${ARGUMENT:$KEY_LENGTH+1}"
   
   echo "$KEY"="$VALUE"
   sed -i "s|$KEY|$VALUE|g" ./test_run.yaml
done

chmod 777 ./test_run.yaml

