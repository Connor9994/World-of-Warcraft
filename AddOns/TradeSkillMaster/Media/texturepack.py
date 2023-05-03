import json
import sys

# Related commands:
#   BLPConverter.exe /FBLP_BGRA .\UIFrames.png
#   python .\texturepack.py .\UIFrames.json

assert(len(sys.argv) == 2)

with open(sys.argv[1]) as f:
    info = json.loads(f.read())

def get_image_name(file_name):
    name, ext = file_name.split(".")
    assert(ext in ("tga", "svg", "png"))
    return name

assert(info['meta']['scale'] == "1")
total_w = info['meta']['size']['w']
total_h = info['meta']['size']['h']
name = get_image_name(info['meta']['image'])

OUTER_TEMPLATE = """
\t\twidth = {},
\t\theight = {},
\t\tcoord = {{
{}
\t\t}}
"""

inner_parts = []
for file_name, frame_info in info['frames'].items():
    file_name = get_image_name(file_name)
    assert(not frame_info['trimmed'] and not frame_info['rotated'])
    x = frame_info['frame']['x']
    y = frame_info['frame']['y']
    w = frame_info['frame']['w']
    h = frame_info['frame']['h']
    inner_parts += ["\t\t\t[\"{}\"] = {{ {}, {}, {}, {} }}".format(file_name, x, x + w, y, y + h)]
inner_parts.sort()

with open(name + ".lua", 'w') as f:
    f.write(OUTER_TEMPLATE.format(total_w, total_h, ",\n".join(inner_parts)))
