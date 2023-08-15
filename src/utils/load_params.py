import yaml
from box import ConfigBox

def load_params(params_path: str):
    with open(params_path) as conf_file:
        config = yaml.safe_load(conf_file)
        params = ConfigBox(config)
        return params
    
    