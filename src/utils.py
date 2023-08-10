import yaml

def load_config(config_path: str):
    with open(config_path) as conf_file:
        config = yaml.safe_load(conf_file)
        return config