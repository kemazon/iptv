# 📺 IPTV para R36S

Este proyecto permite reproducir listas **IPTV (.m3u)** en la consola **R36S**, utilizando **mpv** y scripts personalizados para controlar los canales mediante los botones del dispositivo.

---

## ⚙️ Instalación

1. **Copiar los scripts**
   - Copia los archivos `IPTV.sh` y `Botones.sh` en la carpeta:
     ```
     /roms2/tools
     ```

2. **Editar la URL de la lista IPTV**
   - Abre el archivo `IPTV.sh` y reemplaza la URL del playlist:
     ```bash
     PLAYLIST="http://192.168.89.16/izzi.m3u"
     ```

3. **Instalar dependencias**
   ```bash
   sudo apt install socat
   sudo apt install mpv --no-install-recommends

Copiar los scripts LUA

Copia todos los archivos .lua en la carpeta:

    /home/ark/.config/mpv/scripts

Agregar tarea al inicio del sistema

    crontab -e


Agrega la siguiente línea al final:

        @reboot bash /roms2/tools/Botones.sh

Reinicia el dispositivo para aplicar los cambios.

##🎮 Controles

	Control	Acción
	
	D-Pad Izquierdo	=	Canal previo
   	D-Pad Derecho	=	Siguiente canal
   	Stick Derecho (Pulsar)	=	Recargar canal actual / Elegir canal en playlist
   	Stick Derecho Arriba/Abajo	=	Mostrar playlist y navegar
   	Stick Derecho Izq/Der	=	Avanza/retrocede 20 canales en la lista
   	Stick Izquierdo (Botón)	=	Cambiar relación de aspecto
   	Fn + Stick Izquierdo Abajo	=	Mostrar hora y batería restante
   	Fn + Y	=	Activar/desactivar modo aleatorio en playlist
   	Fn + A	=	Descargar playlist y recargarla
   	Fn + X	=	Mostrar URL del canal actual
   	Fn + B	=	Mostrar información completa del stream/archivo actual
	
🧩 Notas

    El script Botones.sh debe permanecer en ejecución para que los controles funcionen.

    Se recomienda usar mpv sin dependencias adicionales para reducir el consumo de recursos.

    El modo aleatorio y las funciones LUA están integradas directamente en los scripts.

🖼️ Capturas de Pantalla


