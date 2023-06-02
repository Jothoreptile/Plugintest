# Plugintest
Test klipper

To install the plugin :
wget -O - https://raw.githubusercontent.com/Jothoreptile/Plugintest/main/install.sh | bash

[update_manager Plugintest]
type: git_repo
path: ~/klippain_config
origin: https://github.com/Jothoreptile/Plugintest.git
primary_branch: main
managed_services: moonraker klipper
install_script: install.sh
