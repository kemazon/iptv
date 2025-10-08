# iptv
Copy IPTV.sh & Botones.sh to tools folder

Edit IPTV.sh to replace playlist URL
  PLAYLIST="http://192.168.89.16/izzi.m3u"

install mpv:
  sudo apt install mpv --no-install-recommends
  
copy lua files to mpv scripts folder.
  /home/ark/.config/mpv/scripts

add task on crontab:
  @reboot bash /roms2/tools/Botones.sh

reboot device

