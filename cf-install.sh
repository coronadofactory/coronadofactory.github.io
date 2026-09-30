#!/bin/sh



#
# cf Installer
# 
# Copyright (c) 1984-2024 Jose Garcia
# Released under the MIT license
# https://raw.githubusercontent.com/coronadofactory/hexagonal/refs/heads/main/LICENSE.txt
#
# Date: 2024-10-03
# Rev:2026-10-01

echo "***********************************************"
echo "* Hello. Welcome to coronadofactory installer *"
echo "***********************************************"
echo ""
echo "What would you like to install?"
echo " 1) Docker" 
echo " 2) Exit"

while :; do
    printf "Please select an option: "
    read -r option

    case "$option" in
        1)
            MODULE=docker
            break
            ;;
        2)
            exit
            ;;
        *)
            echo "Invalid option."
            echo
            ;;
    esac
done

curl -s https://raw.githubusercontent.com/coronadofactory/devops/refs/heads/main/cf-installer.sh | sh -s -- install $MODULE