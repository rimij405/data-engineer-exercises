# Data Engineering Exercises

> :warning: This project is a significant work-in-progress and may change in scope, size, and structure.

## :book: Overview

This project is a collection of solutions for various data engineering practice scenarios. The solutions are implemented in Python and R, two of the most popular languages in the field of data science. The aim of this project is to provide a reference for data engineering enthusiasts and professionals, and to encourage the open-source community to contribute and improve upon these solutions.

## :page_with_curl: License

This project is licensed under the terms of the MIT license. For more information, please see the [LICENSE](LICENSE) file in this repository.

## :handshake: Contributing Guide

We welcome contributions from the open-source community. Here are the steps to contribute to this project:

1. Fork the repository.
2. Create your feature branch (`git checkout -b feature/fooBar`).
3. Commit your changes (`git commit -am 'Add some fooBar'`).
4. Push to the branch (`git push origin feature/fooBar`).
5. Create a new Pull Request.

## :question: FAQ

**Q1: What versions of Python and R are these solutions compatible with?**

A1: The solutions are compatible with Python 3.6 and above, and R 3.5 and above.

**Q2: I found a bug in one of the solutions. What should I do?**

A2: Please open an issue in the repository describing the bug. If you have a fix for the bug, I would appreciate it if you could open a pull request with the fix.

**Q3: I have a suggestion for a new practice scenario. How can I contribute?**

A3: I welcome new practice scenarios. Please open an issue in the repository describing your scenario. If you can provide a solution as well, please open a pull request with the solution.

**Q4: How can I setup the repository locally for development?**

A4: This project uses some development tools such as [`pre-commit`]() that have certain Python dependencies. Every system will be different but I suggest using [`pyenv`]() to manage your installed Python version and using the built-in [`venv`]() to handle creations of virtual environments specific to each exercise. A `requirements-dev.txt` is provided in the root of the project for defining the minimum requirements needed in order to interpret the `Pipfile.lock`.

Assuming you have a system Python accessible and installed, you can setup the project by doing the following from the root directory of the project:

```bash
# Install your desired version of Python.
$ pyenv install python-<version>

# Create a virtual environment called `.venv` in the project directory.
$ python -m venv .venv

# Activate the virtual environment.
$ . .venv/bin/activate

# Install development requirements into the virtualenv for the project.
$ pip install pipenv

# Install the dependencies required using `pipenv`.
$ pipenv install

# Enter the sub-shell to get access to the pre-commit toolset
$ pipenv shell
```

## :bookmark: Acknowledgements

This project is inspired by the exercises  in [danielbeach](https://github.com/danielbeach)/[data-engineering-practice](https://github.com/danielbeach/data-engineering-practice).
