#!/usr/bin/env bash
#################################################
###### AUTOMATED INSTALL AND UPDATE SCRIPT ######
#################################################
# Written by Jotho with his little hand

# Define variables
PLUGIN_NAME="Plugintest"
PLUGIN_REPO="https://github.com/Jothoreptile/Plugintest.git"
PLUGIN_CONFIG_DIR="~/printer_data/config/$PLUGIN_NAME"

# Ensure the required dependencies are installed
if ! command -v git >/dev/null 2>&1; then
    echo "Git is not installed. Please install Git and try again."
    exit 1
fi

# Check if the plugin directory exists
if [ ! -d "$PLUGIN_CONFIG_DIR" ]; then
    # Directory doesn't exist, clone the plugin repository
    echo "Installing $PLUGIN_NAME..."
    git clone "$PLUGIN_REPO" "$PLUGIN_CONFIG_DIR"
else
    # Directory exists, update the plugin repository
    echo "Updating $PLUGIN_NAME..."
    cd "$PLUGIN_CONFIG_DIR"
    git pull
fi

# Restart Klipper service
echo "Restarting Klipper..."
sudo systemctl restart klipper

echo "Installation and update complete!"

