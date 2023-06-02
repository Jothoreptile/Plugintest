#!/usr/bin/env bash
#################################################
###### AUTOMATED INSTALL AND UPDATE SCRIPT ######
#################################################
# Written by Jotho with his little hand
# @version: 0.1

# CHANGELOG:
#   v0.1 : First try to not broke everything

# Create the plugintest folder if it doesn't exist
mkdir -p "$~/printer_data/config/Plugintest"

# Clone the GitHub repository
git clone https://github.com/Jothoreptile/Plugintest

# Copy the files to the Klipper configuration directory
cp -r Plugintest/* $~/printer_data/config/Plugintest

function restart_klipper {
    echo "[POST-INSTALL] Restarting Klipper..."
    sudo systemctl restart klipper
}

echo "Installation complete!"
