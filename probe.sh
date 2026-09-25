#!/bin/bash
# usage: probe.sh <name> : captures cropped 320x200 shot
cd /home/user/pacamaze-32x
export DISPLAY=:99
WID=$(xdotool search --name "DOSBox" | head -n1)
shot() {
  scrot -z emu/$1.png
  python3 -c "
from PIL import Image
img = Image.open('/home/user/pacamaze-32x/emu/$1.png').convert('RGB')
crop = img.crop((320,200,320+640,200+400)).resize((320,200), Image.NEAREST)
crop.save('/home/user/pacamaze-32x/emu/$1_crop.png')
"
}
tap() { # hold key briefly
  xdotool keydown --window $WID $1
  sleep $2
  xdotool keyup --window $WID $1
  sleep 0.6
}
