#!/usr/bin/env bash

echo -e "\nStarting Chainspace Client API...\n"

BFT_SMART_LIB=lib/bft-smart-1.0.0-DECODE.jar
CHAINSPACE_JAR=chainspace-1.0-SNAPSHOT-jar-with-dependencies.jar
CLIENT_API_PORT=5000
CLIENT_API_DB=../node_0_0/database
MAIN_CLASS=uk.ac.ucl.cs.sec.chainspace.Client
CONFIG_FILE=config/client-api/config.txt
SUBMIT_T_TIMEOUT=60000

java -Dmapclient.submitTxTimeout=${SUBMIT_T_TIMEOUT} -Dclient.api.database=${CLIENT_API_DB} -Dclient.api.port=${CLIENT_API_PORT} -cp ${BFT_SMART_LIB}:${CHAINSPACE_JAR} ${MAIN_CLASS} ${CONFIG_FILE}
