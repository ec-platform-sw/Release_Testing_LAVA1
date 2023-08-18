# Release_Testing_LAVA
Release_Testing LABA

OOB Setup and OOB Run
#####################
1. Please get the OOB Release Testing PC from IT Team with required OS Distro.
2. Download and setup the Build folder environemtn as per UserGUide.
3. Boot the target.
4. Run "udhcpc" command . (Make sure it get the MAC address).

Test Execution using LAVA:
##########################
1. Download the Repo using git clone https://github.com/ec-platform-sw/Release_Testing_LAVA.git 
2. chmod 777 test_run_file_generate.sh
3. Run the script ./test_run_file_generate.sh by provide the requireed  arguments and it will provide required test_run file/files.
4.  Example:
   "DEVICE_TYPE="b0-edgeq-raptor2" JOB_NAME="Release Testing" BOARD_TAG="Board211" FIRMWARE_BIN_PATH="/lab-nfs/koti/latestimages/RAPTOR2-GNB-PLFM-B0-v1.3.0-RC8.0-v12-BN_176/PRODUCT-REL-TITAN-GNB-PLFM-B0-v1.3.0-RC8.0/FLASHER/flash_image_16M.bin" TFTP_SERVER_IP_ADDRESS="192.168.9.160" TFTP_PKG_DIR_PATH="koti/RAPTOR2-GNB-PLFM-B0-v1.3.0-RC8.0-v12-BN_176/PRODUCT-REL-TITAN-GNB-PLFM-B0-v1.3.0-RC8.0" MAC_ADDRESS="FC:9B:D4:00:02:3A"
5. Run the LAVA test using
    1. Loging to 192.168.3.198 (ssh equser@192.168.3.198)
    2.  lavacli --uri http://admin:es3bkjwhjo04oazzl0zqhl7zfr2n8wf1eg3zl246o9gspyyi2pczdsotmufgyc00yzkjuz6o0pl28mymjz7he980artaysb7hj4h4r5tia1u2f3y3ecf94ys1ye32ns0@192.168.3.198/RPC2/ jobs submit  "Generated test_run file>
    3.  you can find the test execution live results  in LAVA GUI page at http://192.168.3.198/scheduler/alljobs  
   
