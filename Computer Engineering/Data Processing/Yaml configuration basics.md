To load a YAML configuration file containing working directories for existing files in Python, you can use the `pyyaml` library to parse the YAML file and then use the `os.path` module to check if the specified directories and files exist. Here's a Python script that demonstrates this:

```python
import os
import yaml

def load_config(config_file):
    try:
        with open(config_file, 'r') as yaml_file:
            config = yaml.safe_load(yaml_file)
        return config
    except FileNotFoundError:
        print(f"Config file '{config_file}' not found.")
        return None
    except Exception as e:
        print(f"Error loading config file: {str(e)}")
        return None

def check_directories_and_files(config):
    if config is None:
        return

    for key, value in config.items():
        if os.path.exists(value):
            print(f"Directory/File '{key}': {value} exists.")
        else:
            print(f"Directory/File '{key}': {value} does not exist.")

if __name__ == "__main__":
    config_file = "config.yaml"  # Replace with the path to your YAML config file
    config = load_config(config_file)
    if config:
        check_directories_and_files(config)
```

In this script:

1. We define a function `load_config` that reads and parses the YAML configuration file using the `yaml.safe_load` method. It returns a dictionary containing the configuration data.

2. We define a function `check_directories_and_files` that takes the loaded configuration dictionary as input. It iterates through the key-value pairs in the dictionary and checks if the specified directories or files exist using `os.path.exists`.

3. In the `__main__` section, we specify the path to your YAML configuration file (`config_file`). Make sure to replace `"config.yaml"` with the path to your actual YAML file.

4. We call `load_config` to load the configuration data and then `check_directories_and_files` to check if the directories and files specified in the configuration exist.

Make sure to structure your YAML configuration file like this:

```yaml
file1: /path/to/existing_file1
file2: /path/to/existing_file2
directory1: /path/to/existing_directory1
directory2: /path/to/existing_directory2
```

Replace the keys (`file1`, `file2`, `directory1`, `directory2`) and values (`/path/to/existing_file1`, etc.) with your actual file and directory paths.