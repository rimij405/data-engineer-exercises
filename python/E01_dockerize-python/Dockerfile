# Use an official Python runtime as a parent image.
FROM python:3.11-slim-bookworm

# Set the working directory in the container to `/code`.
WORKDIR /code

# Copy the current directory contents into the container at `/code`.
# NOTE: Refer to `.dockerignore` file to see what files are excluded from copy.
COPY . /code

# Install any needed packages specified in requirements.txt.
RUN pip install --no-cache-dir -r src/requirements.txt

# Define environment variables.
ENV DOCKER_CONTAINER 1

# Install the package in editable mode.
RUN pip install -e /code/src




