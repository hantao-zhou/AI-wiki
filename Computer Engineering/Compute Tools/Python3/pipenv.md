this is much better when compated with the before venv

# install

To create a new Python virtual environment using Pipenv, you can use the `pipenv install` command with the `--python` option, followed by the path to the desired Python interpreter.

Here are the basic steps to create a new virtual environment using Pipenv:

1. Install Pipenv if it is not already installed on your system. You can install Pipenv using the following command:

```
pip install pipenv
```

2. Navigate to the directory where you want to create the virtual environment.

3. Run the following command to create a new virtual environment using Pipenv:

```
pipenv install --python path/to/python
```

Replace "path/to/python" with the path to the desired Python interpreter. For example, if you want to use Python 3.9, you can use the following command:

```
pipenv install --python 3.9
```

This command creates a new virtual environment in a directory called `.venv` within the current directory, and installs the specified version of Python in the environment.

This is also worth mentioning that, it can use pyenv[[pyenv]] or asdf to add unexisting envs

4. Activate the virtual environment using the following command:

```
pipenv shell
```

This command activates the virtual environment and sets the environment variables needed to use the environment.

5. Install any additional packages or dependencies that you need using the `pipenv install` command. For example:

```
pipenv install requests
```

This command installs the `requests` package in the virtual environment.

After completing these steps, youshould have a new virtual environment created and activated using Pipenv, and you can use it to install and manage packages and dependencies for your Python project.

Note that Pipenv creates virtual environments in the same file system as the current working directory, so if you are working with a Samba share directory, the virtual environment will be created on the Samba share. This may affect the performance and reliability of the environment, so you may want to consider using a local directory or a different file system if you require faster or more reliable access to the environment.

# remove

**This is very important, not properly uninstalled is rather annoying**

```sh
pipenv --sudo rm -rf //
```