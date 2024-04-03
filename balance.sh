#!/bin/bash

# Define the base path common to all config paths
base_path="/home/ubuntu/Apps/CovenantSQL/test/service_split"

# Define an array of config file names relative to the base path
config_files=("node_0" "node_1" "node_2" "node_miner_0" "node_miner_1" "node_miner_2" "node_c" "fullnode_0" "node_adapter" "node_mysql_adapter")

# Iterate through the array of config file names
for config_file in "${config_files[@]}"; do
    # Construct the full config path
    config_path="${base_path}/${config_file}/config.yaml"
    
    echo "-------------------${config_file}--------------------"
    # Execute the command and print its output
    cql wallet --config "${config_path}"
    echo "-----------------------------------------------------"
done

echo "All commands executed."

