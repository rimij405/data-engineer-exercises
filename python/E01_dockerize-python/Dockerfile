# Use an official Python runtime as a parent image.
FROM python:3.12-slim-bookworm

# Set the working directory in the container to `/code`.
WORKDIR /code

# Copy the current directory contents into the container at `/code`.
# NOTE: Refer to `.dockerignore` file to see what files are excluded from copy.
COPY . /code

# Set the working directory in the container to `/code/src`.
WORKDIR /code/src

# Install any needed packages specified in requirements.txt.
RUN pip install --no-cache-dir pipenv

# Copy the Pipfile and Pipfile.lock. Caching layers.
COPY src/Pipfile /code/src/Pipfile
COPY src/Pipfile.lock /code/src/Pipfile.lock

# Install pipenv in the appropriate folder.
RUN pipenv install --deploy && \
    pipenv install -e /code/src

# Define environment variables.
ENV DOCKER_CONTAINER 1
