#!/bin/sh

for ARGUMENT in "$@"
do
   KEY=$(echo $ARGUMENT | cut -f1 -d=)

   KEY_LENGTH=${#KEY}
   VALUE="${ARGUMENT:$KEY_LENGTH+1}"

   echo "$KEY"="$VALUE"
   export $KEY=$VALUE
done

export board_number=${BOARD_TAG:5}

if [[ $board_number =~ ^1 ]]
then
cp /lava/edgeq/lava-apc/power_off_b0_titan_generic.sh /lava/edgeq/lava-apc/power_off_b0_titan_$board_number.sh
cp /lava/edgeq/lava-apc/power_on_b0_titan_generic.sh /lava/edgeq/lava-apc/power_on_b0_titan_$board_number.sh
cp /lava/edgeq/lava-apc/power_reset_bootns_titan_generic.sh /lava/edgeq/lava-apc/power_reset_bootns_titan_$board_number.sh
cp /lava/edgeq/lava-apc/boots_b0_titan_generic.sh /lava/edgeq/lava-apc/boots_b0_titan_$board_number.sh
cp /lava/edgeq/lava-apc/bootns_b0_titan_generic.sh /lava/edgeq/lava-apc/bootns_b0_titan_$board_number.sh
cp /lava/edgeq/lava-apc/flash_b0_titan_generic.sh /lava/edgeq/lava-apc/flash_b0_titan_$board_number.sh

#chmod 777 /lava/edgeq/lava-apc/power_off*
#chmod 777 /lava/edgeq/lava-apc/power_on*
chmod 777 /lava/edgeq/lava-apc/power_*
chmod 777 /lava/edgeq/lava-apc/boots_*
chmod 777 /lava/edgeq/lava-apc/bootns_*
chmod 777 /lava/edgeq/lava-apc/flash_*

for ARGUMENT in "$@"
do
   KEY=$(echo $ARGUMENT | cut -f1 -d=)

   KEY_LENGTH=${#KEY}
   VALUE="${ARGUMENT:$KEY_LENGTH+1}"

   echo "$KEY"="$VALUE"
   sed -i "s|$KEY|$VALUE|g" /lava/edgeq/lava-apc/power_off_b0_titan_$board_number.sh
   sed -i "s|$KEY|$VALUE|g" /lava/edgeq/lava-apc/power_on_b0_titan_$board_number.sh
   sed -i "s|$KEY|$VALUE|g" /lava/edgeq/lava-apc/power_reset_bootns_titan_$board_number.sh
   sed -i "s|$KEY|$VALUE|g" /lava/edgeq/lava-apc/boots_b0_titan_$board_number.sh
   sed -i "s|$KEY|$VALUE|g" /lava/edgeq/lava-apc/bootns_b0_titan_$board_number.sh
   sed -i "s|$KEY|$VALUE|g" /lava/edgeq/lava-apc/flash_b0_titan_$board_number.sh
done

sed -i "s|board_number|$board_number|g" /lava/edgeq/lava-apc/power_reset_bootns_titan_$board_number.sh

fi


if [[ $board_number  =~ ^2 ]]
then
cp /lava/edgeq/lava-apc/power_off_on_b0_hawk_generic.sh  /lava/edgeq/lava-apc/power_off_on_b0_hawk_$board_number.sh
cp /lava/edgeq/lava-apc/power_off_b0_hawk_generic.sh  /lava/edgeq/lava-apc/power_off_b0_hawk_$board_number.sh
cp /lava/edgeq/lava-apc/power_on_b0_hawk_generic.sh   /lava/edgeq/lava-apc/power_on_b0_hawk_$board_number.sh
cp /lava/edgeq/lava-apc/boots_b0_hawk_generic.sh  /lava/edgeq/lava-apc/boots_b0_hawk_$board_number.sh
cp /lava/edgeq/lava-apc/bootns_b0_hawk_generic.sh /lava/edgeq/lava-apc/bootns_b0_hawk_$board_number.sh
cp /lava/edgeq/lava-apc/flash_b0_hawk_generic.sh  /lava/edgeq/lava-apc/flash_b0_hawk_$board_number.sh

chmod 777 /lava/edgeq/lava-apc/power_*
chmod 777 /lava/edgeq/lava-apc/boots_*
chmod 777 /lava/edgeq/lava-apc/bootns_*
chmod 777 /lava/edgeq/lava-apc/flash_*

for ARGUMENT in "$@"
do
   KEY=$(echo $ARGUMENT | cut -f1 -d=)

   KEY_LENGTH=${#KEY}
   VALUE="${ARGUMENT:$KEY_LENGTH+1}"

   echo "$KEY"="$VALUE"
   sed -i "s|$KEY|$VALUE|g"  /lava/edgeq/lava-apc/power_off_on_b0_hawk_$board_number.sh
   sed -i "s|$KEY|$VALUE|g"  /lava/edgeq/lava-apc/power_off_b0_hawk_$board_number.sh
   sed -i "s|$KEY|$VALUE|g"  /lava/edgeq/lava-apc/power_on_b0_hawk_$board_number.sh
   sed -i "s|$KEY|$VALUE|g"  /lava/edgeq/lava-apc/boots_b0_hawk_$board_number.sh
   sed -i "s|$KEY|$VALUE|g" /lava/edgeq/lava-apc/bootns_b0_hawk_$board_number.sh
   sed -i "s|$KEY|$VALUE|g" /lava/edgeq/lava-apc/flash_b0_hawk_$board_number.sh

done
fi
