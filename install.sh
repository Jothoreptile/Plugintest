#!/usr/bin/env bash
#################################################
###### AUTOMATED INSTALL AND UPDATE SCRIPT ######
#################################################
# Written by Jotho with his little hand
# @version: 0.2

# CHANGELOG:
#   v0.1 : First try to not broke everything
#   v0.2 : Try to not brove V2

# Create the plugintest folder if it doesn't exist
$ mkdir -p ~/printer_data/config/Plugintest

#copy cfg files into printer data
wget -P ~/printer_data/config/Plugintest https://raw.githubusercontent.com/Jothoreptile/Plugintest/main/Plugin.cfg

function restart_klipper {
    echo "[POST-INSTALL] Restarting Klipper..."
    sudo systemctl restart klipper
}

echo "Installation complete!"
