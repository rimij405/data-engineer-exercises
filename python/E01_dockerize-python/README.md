# 01. Dockerizing a Python Application

## Exercise Description

This exercise demonstrates how to dockerize a simple Python application. Dockerizing an application is the process of making it run within a Docker container, which can help to simplify deployment and ensure consistency across different environments.

## Learning Outcomes

After reviewing this exercise, you should be able to:

- Understand the basics of Docker and containerization
- Write a Dockerfile for a Python application
- Build a Docker image from a Dockerfile
- Run a Python application within a Docker container
- Push a Docker image to a Docker registry

## Key Concepts

- Python: Python is a high-level, interpreted, interactive and object-oriented scripting language. [Learn more about Python](https://www.python.org/doc/essays/blurb/).
- Docker: Docker is an open-source platform that automates the deployment, scaling, and management of applications. It uses containerization to package up an application with all of its dependencies into a standardized unit for software development. [Learn more about Docker](https://www.docker.com/resources/what-container/).
- `pip`: `pip` is a package manager for Python. It allows you to install and manage additional packages that are not part of the Python standard library. [Learn more about `pip`](https://pip.pypa.io/en/stable/).
- `pytest`: `pytest` is a framework that makes building simple and scalable tests easy. [Learn more about `pytest`](https://docs.pytest.org/en/latest/).
- `pytest-html`: `pytest-html` is a plugin for pytest that generates a static HTML report. [Learn more about `pytest-html`](https://pytest-html.readthedocs.io/en/latest/).

## Getting Started

This exercise was created to help demonstrate how to structure and test a Python exercise in this repository:

1. Change directories into the exercise folder (eg., `cd $PYTHON_PROJECT_DIR/E01_dockerize-python/`).
2. Create application and unit tests in the `src/app` and `src/tests` directories, respectively.
3. Create the Dockerfile, `.dockerignore`, and `compose.yml` as needed in the exercise directory.
4. Write additional exercise-specific scripts in the `$EXERCISE_DIR/scripts` folder. Use `chmod +x $FILENAME` to make the scripts executable.

## Building the Docker Image

You can build an image from the [Dockerfile](./Dockerfile) in this exercise using `docker build -t $DOCKER_IMAGE_NAME:$DOCKER_TAG_NAME` command.

- Replace `$DOCKER_IMAGE_NAME` with the identifiable container name you wish to use.
- Replace `$DOCKER_TAG_NAME` with the tag specifier that will be applied to the created image.

The helper script [`build-docker-image.sh`](./scripts/build-docker-image.sh) demonstrates how to customize this process.

## Running the Application

You can run the application using a Docker container that will be removed once the script completes:

```bash
$ docker run --rm -it $DOCKER_IMAGE_NAME /bin/bash -c "python /code/src/app/__init__.py"
# Output from the executed command will be here...
```

The helper script [`run-docker-container.sh`](./scripts/run-docker-container.sh) demonstrates how to accomplish this.

## Generating Coverage & Unit Test Reports

For this exercise, coverage and unit test HTML reports can be generated with `coverage` and `pytest`, respectively, using the [`scripts/generate-reports.sh`](./scripts/generate-reports.sh) script.

## Hints

- You can always read official images for reference.

## Resources

- [Docker Documentation](https://docs.docker.com/)
- [Python Documentation](https://docs.python.org/3/)
