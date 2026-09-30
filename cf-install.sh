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

case "${1:-}" in
    docker)
        MODULE=$1
        ;;

    "")
        echo "Module parameter is required" >&2
        exit 1
        ;;

    *)
        echo "Invalid module $1 to install" >&2
        exit 1
        ;;
esac

curl -s https://raw.githubusercontent.com/coronadofactory/devops/refs/heads/main/cf-install.sh | sh -s -- docker install $MODULE