#!/bin/bash
set -e

# Get the container ID of the running container (if any)
containerid=$(docker ps -q)

# Check if there is any container running before trying to remove it
if [ -n "$containerid" ]; then
    echo "Stopping and removing container $containerid"
    docker rm -f $containerid
else
    echo "No running container to stop."
fi
