#!/usr/bin/env bash
#################################################
###### AUTOMATED INSTALL AND UPDATE SCRIPT ######
#################################################
# Written by Jotho with his little hand
# @version: 0.1

# CHANGELOG:
#   v0.1 : First try to not broke everything


#!/bin/bash

# Clone the GitHub repository
git clone https://github.com/Jothoreptile/Plugintest

# Copy the files to the Klipper configuration directory
cp -r Plugintest/* ~/.config/klipper/plugintest

# Restart the Klipper service
sudo systemctl restart klipper

echo "Installation complete!"
