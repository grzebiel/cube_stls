from jinja2 import Environment, FileSystemLoader

configs = [
    "1x1x10",
    "1x2x10",
    "2x3x10",
    "3x4x10",
    "1x5x10",
    "1x10x10",
]

env = Environment(loader=FileSystemLoader('templates'),
                  trim_blocks=True, lstrip_blocks=True)
template = env.get_template("cube.scad")

for config in configs:
    cfg = {}
    rt = config.split('x')
    cfg['times'] = rt[2]
    cfg['width'] = rt[0]
    cfg['space'] = rt[1]
    with open(config + '.scad', 'w') as cfg_file:
        cfg_file.write(template.render(cfg))
