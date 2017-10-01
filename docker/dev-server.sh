#!/bin/bash
# runs webpack in app container

NODE_ENV=${1:-development}
echo "Running with NODE_ENV=$NODE_ENV"

# stop and remove the containers if they are running
stop_and_remove_container()
{
    docker stop elm-buttons
    docker rm elm-buttons
}
stop_and_remove_container || true

# run the workbench container
docker run \
    -v $(pwd)/src:/app/src/ \
    -v $(pwd)/dev-server:/app/dev-server/ \
    -e NODE_ENV=$NODE_ENV \
    --name=elm-buttons \
    --publish 4000:4000 \
    --publish 35729:35729 \
    --entrypoint=/app/entrypoints/dev-server.sh \
    -t elm-buttons
