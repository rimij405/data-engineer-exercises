#!/bin/bash
set -e
set -o pipefail

# Read an environment file.
if [ -f ".dockerenv" ]
then
    # Load the env file if it exists.
    export $(egrep -v '^#' .dockerenv | xargs)
fi

# Check if DOCKER_IMAGE_NAME environment variable is set.
if [ -z "$DOCKER_IMAGE_NAME" ]
then
    # Use a default value.
    DOCKER_IMAGE_NAME=rimij405/datascience-exerise-01
fi

echo "Running default configuration."
docker run --rm -it $DOCKER_IMAGE_NAME /bin/bash -c "python /code/src/app/__init__.py"
