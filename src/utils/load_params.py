import yaml
from box import ConfigBox

def load_params(config_path: str):
    with open(config_path) as conf_file:
        config = yaml.safe_load(conf_file)
        params = ConfigBox(config)
        return params
    
    