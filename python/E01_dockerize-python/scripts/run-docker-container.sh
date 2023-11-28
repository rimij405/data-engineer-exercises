#!/bin/bash
set -e
set -o pipefail

# Check if DOCKER_IMAGE_NAME environment variable is set.
if [ -z "$DOCKER_IMAGE_NAME" ]
then
    # Use a default value.
    DOCKER_IMAGE_NAME=rimij405/datascience-exerise-01
fi

echo "Running default configuration."
docker run --rm -it $DOCKER_IMAGE_NAME /bin/bash -c "python /code/src/app/__init__.py"
