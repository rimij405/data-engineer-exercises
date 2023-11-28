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

# Initialize variables.
tag=""

# Loop through all the positional parameters
while (( "$#" )); do
    case "$1" in
      -t|--tag)
      tag=${2:-"latest"}
      shift 2
      ;;
      --) # end of argument parsing
      shift
      break
      ;;
      -*|--*=) # unsupported flags
      echo "Error: Unsupported flag $1" >&2
      exit 1
      ;;
      *) # preserve positional argumetns
      PARAMS="$PARAMS $1"
      shift
      ;;
    esac
done

# Set positional arguments in their proper place
eval set -- "$PARAMS"

# Define the docker image tag.
if [ -z "$tag" ]
then
    # If the first argument is not set, use 'latest' as the default tag.
    DOCKER_IMAGE_TAG=latest
else
    # Use the second argument as the image tag
    DOCKER_IMAGE_TAG=$tag
fi

# Use the arguments
docker build -t $DOCKER_IMAGE_NAME:$DOCKER_IMAGE_TAG ../





