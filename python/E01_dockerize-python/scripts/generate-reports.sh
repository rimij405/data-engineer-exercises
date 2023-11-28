#!/bin/bash
set -e
set -o pipefail

# Check if DOCKER_IMAGE_NAME environment variable is set.
if [ -z "$DOCKER_IMAGE_NAME" ]
then
    # Use a default value.
    DOCKER_IMAGE_NAME=rimij405/datascience-exerise-01
fi

# Function that will generate the coverage report.
make_coverage_report() {
    local HOST_DIR=$(realpath ../src)/docs/htmlcov
    local CONTAINER_DIR=/code/src/htmlcov
    local MOUNT_PATH=$HOST_DIR:$CONTAINER_DIR
    echo "Generating the coverage report ($MOUNT_PATH)."

    # Execute command that will:
    # 1. Generate coverage data in the `/code/src` directory.
    # 2. Output command line report containing coverage details.
    # 3. Output HTML report to `/code/htmlcov/index.html`.
    docker run --rm -v $MOUNT_PATH $DOCKER_IMAGE_NAME /bin/bash -c "\
    cd /code/src && \
    coverage run -m unittest discover && \
    coverage report && \
    coverage html && \
    coverage json && \
    mv coverage.json htmlcov/coverage.json && \
    mv .coverage htmlcov/.coverage"
}

# Function that will generate the pytest report.
make_pytest_report() {
    local HOST_DIR=$(realpath ../src)/docs
    local CONTAINER_DIR=/code/src/docs
    local MOUNT_PATH=$HOST_DIR:$CONTAINER_DIR
    echo "Generating the pytest report ($MOUNT_PATH)."

    # Execute command that will:
    # 1. Output HTML report to `/code/docs/reports.html`.
    docker run --rm -v $MOUNT_PATH $DOCKER_IMAGE_NAME /bin/bash -c "\
    pytest /code/src/tests --html=src/docs/report.html --self-contained-html"
}

# Check if a docker image already exists.
if [ "$(docker images -q $DOCKER_IMAGE_NAME 2> /dev/null)" == "" ]
then
    echo "Image $DOCKER_IMAGE_NAME not found. Building container from context."
    source ./build-docker-image.sh
fi

# Generate the reports.
make_pytest_report
make_coverage_report


