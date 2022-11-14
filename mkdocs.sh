#!/bin/bash

set -e

if test -z "$1"
then
    cat <<EOF
### Usage ###
Start mkdocs container: ./mkdocs.sh start
Stop mkdocs container: ./mkdocs.sh stop
EOF
    exit 1
fi

ENV=$1

case $ENV in
  start)
    echo "Start mkdocs: ${ENV}"
    export USER_ID="$(id -u)"
    export GROUP_ID="$(id -g)"
    docker compose up --build -d
    ;;
  stop)
    echo "Start mkdocs: ${ENV}"
    export USER_ID="$(id -u)"
    export GROUP_ID="$(id -g)"
    docker compose down
    ;;
esac
