# Release_Testing_LAVA
Release_Testing LABA

OOB Setup and OOB Run
#####################
1. Please get the OOB Release Testing PC from IT Team with required OS Distro.
2. Download and setup the Build folder environemtn as per UserGUide.
3. Boot the target.



Test Execution using LAVA:
##########################
1. Download the Repo using git clone https://github.com/ec-platform-sw/Release_Testing_LAVA.git 
2. Run #chmod 777 test_run_file_generate.sh; chmod 777 test_setup_update.sh
3. Run #scp test_setup_update.sh equser@192.168.3.198:/home/equser/lava/release_testing
4. Run the script ./test_run_file_generate.sh by provide the requireed  arguments and it will provide required test_run file/files.
   Example:
   "BOARD_TAG="Board122"  DEVICE_TYPE="b0-edgeq-raptor2" BUILD_ID="RAPTOR2-GNB-PLFM-B0-v1.3.0-RC8.0-v12-BN_176" BSP_ID="PRODUCT-REL-TITAN-GNB-PLFM-B0-v1.3.0-RC8.0" JOB_NAME="SANITY-REPORT_xxxxx" FIRMWARE_BIN_PATH="/lab-nfs/koti/latestimages/RAPTOR2-GNB-PLFM-B0-v1.3.0-RC8.0-v12-BN_176/PRODUCT-REL-TITAN-GNB-PLFM-B0-v1.3.0-RC8.0/FLASHER/flash_image_16M.bin" TFTP_SERVER_IP_ADDRESS="192.168.9.160" TFTP_PKG_DIR_PATH="koti/RAPTOR2-GNB-PLFM-B0-v1.3.0-RC8.0-v12-BN_176/PRODUCT-REL-TITAN-GNB-PLFM-B0-v1.3.0-RC8.0" MAC_ADDRESS="FC:9B:D4:00:02:3A"   PRODUCT_REL_PATH="/lab-nfs/koti/latestimages/RAPTOR2-GNB-PLFM-B0-v1.3.0-RC8.0-v12-BN_176/PRODUCT-REL-TITAN-GNB-PLFM-B0-v1.3.0-RC8.0" WEBPDU_IP="192.168.3.127" WEBPDU_PORT="6" "
6. Make sure Target's Host PC have /lava mounted path. if not, Please mount the same using below commands (  #sudo mkdir -p /lava;  sudo chmod 777 -R /lava ; sudo mount 192.168.5.221:/mnt/blr/regression  /lava)
8. Run the LAVA test using
    1. Loging to 192.168.3.198 (ssh equser@192.168.3.198)
    2. cd ~/lava/release_testing
    3. chmod 777 test_setup_update.sh
    4. Run the script "test_setup_update.sh" by provide the required arguments (same arguments mentioned in 4th step i.e BOARD_TAG=""  DEVICE_TYPE="b0-edgeq-raptor2" BUILD_ID="" BSP_ID="" JOB_NAME="SANITY-REPORT_xxxxx" FIRMWARE_BIN_PATH="" TFTP_SERVER_IP_ADDRESS="" TFTP_PKG_DIR_PATH="" MAC_ADDRESS=""   PRODUCT_REL_PATH="" WEBPDU_IP="" WEBPDU_PORT=""
        ( Example:
            ./test_setup_update.sh BOARD_TAG="Board122"  DEVICE_TYPE="b0-edgeq-raptor2" BUILD_ID="RAPTOR2-GNB-PLFM-B0-v1.3.0-RC8.0-v12-BN_176" BSP_ID="PRODUCT-REL-TITAN-GNB-PLFM-B0-v1.3.0-RC8.0" JOB_NAME="SANITY-REPORT_xxxxx" FIRMWARE_BIN_PATH="/lab-nfs/koti/latestimages/RAPTOR2-GNB-PLFM-B0-v1.3.0-RC8.0-v12-BN_176/PRODUCT-REL-TITAN-GNB-PLFM-B0-v1.3.0-RC8.0/FLASHER/flash_image_16M.bin" TFTP_SERVER_IP_ADDRESS="192.168.9.160" TFTP_PKG_DIR_PATH="koti/RAPTOR2-GNB-PLFM-B0-v1.3.0-RC8.0-v12-BN_176/PRODUCT-REL-TITAN-GNB-PLFM-B0-v1.3.0-RC8.0" MAC_ADDRESS="FC:9B:D4:00:02:3A"   PRODUCT_REL_PATH="/lab-nfs/koti/latestimages/RAPTOR2-GNB-PLFM-B0-v1.3.0-RC8.0-v12-BN_176/PRODUCT-REL-TITAN-GNB-PLFM-B0-v1.3.0-RC8.0" WEBPDU_IP="192.168.3.127" WEBPDU_PORT="6" " )
    5. lavacli --uri http://admin:es3bkjwhjo04oazzl0zqhl7zfr2n8wf1eg3zl246o9gspyyi2pczdsotmufgyc00yzkjuz6o0pl28mymjz7he980artaysb7hj4h4r5tia1u2f3y3ecf94ys1ye32ns0@192.168.3.198/RPC2/ jobs submit  "Generated test_run file>
    6.  you can find the test execution live results  in LAVA GUI page at http://192.168.3.198/scheduler/alljobs  
   
