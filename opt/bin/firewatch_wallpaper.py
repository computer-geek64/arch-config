#!/usr/bin/python3
# firewatch_wallpaper.py

import os
from subprocess import Popen, PIPE
from datetime import datetime, timedelta


firewatch_path = '/home/ashish/.firewatch'
firewatch = ''  # 'cliff' or 'forest'
lat = ''  # Latitude coordinate followed by 'N'
lon = ''  # Longitude coordinate followed by 'E'

sunrise, sunset = Popen(['/usr/bin/sunwait', 'list', lat, lon], stdout=PIPE, stderr=PIPE).communicate()[0].decode().strip().split(', ')
time = datetime.now()
sunrise = datetime.strptime(datetime.strftime(time, '%Y%m%d') + '_' + sunrise, '%Y%m%d_%H:%M')
sunset = datetime.strptime(datetime.strftime(time, '%Y%m%d') + '_' + sunset, '%Y%m%d_%H:%M')

if time < sunrise:
    # Night
    if time >= sunrise - timedelta(hours=1, minutes=0):
        # Before sunrise wallpaper
        Popen(['/usr/bin/nitrogen', '--save', '--set-zoom-fill', os.path.join(firewatch_path, firewatch, firewatch + '-before-sunrise.jpg')], stdout=PIPE, stderr=PIPE)
    else:
        # Night wallpaper
        Popen(['/usr/bin/nitrogen', '--save', '--set-zoom-fill', os.path.join(firewatch_path, firewatch, firewatch + '-night.jpg')], stdout=PIPE, stderr=PIPE)
elif time > sunset:
    # Night
    if time <= sunset + timedelta(hours=0, minutes=30):
        # After sunset wallpaper
        Popen(['/usr/bin/nitrogen', '--save', '--set-zoom-fill', os.path.join(firewatch_path, firewatch, firewatch + '-after-sunset.jpg')], stdout=PIPE, stderr=PIPE)
    else:
        # Night wallpaper
        Popen(['/usr/bin/nitrogen', '--save', '--set-zoom-fill', os.path.join(firewatch_path, firewatch, firewatch + '-night.jpg')], stdout=PIPE, stderr=PIPE)
else:
    # Day
    if time <= sunrise + timedelta(hours=1, minutes=0):
        # Sunrise wallpaper
        Popen(['/usr/bin/nitrogen', '--save', '--set-zoom-fill', os.path.join(firewatch_path, firewatch, firewatch + '-sunrise.jpg')], stdout=PIPE, stderr=PIPE)
    elif time >= sunset - timedelta(hours=1, minutes=0):
        # Sunset wallpaper
        Popen(['/usr/bin/nitrogen', '--save', '--set-zoom-fill', os.path.join(firewatch_path, firewatch, firewatch + '-sunset.jpg')], stdout=PIPE, stderr=PIPE)
    else:
        # Day wallpaper
        Popen(['/usr/bin/nitrogen', '--save', '--set-zoom-fill', os.path.join(firewatch_path, firewatch, firewatch + '-day.jpg')], stdout=PIPE, stderr=PIPE)
