# iptv
Copiar IPTV.sh & Botones.sh a la carpeta tools

>Editar IPTV.sh y reemplazar la URL de la lista IPTV
  PLAYLIST="http://192.168.89.16/izzi.m3u"

Instalar mpv y socat:
  sudo apt install socat
  sudo apt install mpv --no-install-recommends
  
Copiar archivos .LUA a la carpeta:
  /home/ark/.config/mpv/scripts

agregar la tarea a crontab (crontab -e):
  @reboot bash /roms2/tools/Botones.sh

reinicia el dispositivo.

## Controles ##

dpad Izquierdo   ==  Canal previo
dpad Derecho     ==  Siguiente canal

Stick derecho:
Pulsar           ==  Recargar canal actual / Elegir canal en playlist
Arriba/abajo     ==  muestra el playlist y navegar en el
Izq/der          ==  avanza/retrocede 20 canales en la lista

Stick Izquierdo:
Botón            ==  Cambiar relación de aspecto

Fn + Stick izquierdo Abajo = Mostrar hora y bateria restante
Fn + Y           ==  Activar/Desactivar modo aleatorio en playlist
Fn + A           ==  Descarga playlist y vuelve a cargarla
Fn + X           ==  Muestra url del canal actual
Fn + B           ==  Muestra información completa sobre el stream/archivo actual
