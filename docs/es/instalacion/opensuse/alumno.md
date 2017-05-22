
# Instalación en los equipos de los alumnos con OpenSUSE 13.2

* Instalar el software de acceso remoto SSH server.
    * `Yast -> Instalación de Software -> OpenSSH` por el modo gráfico.
    * `zypper install openssh` por comandos.
* El usuario del equipo principal (profesor) debe conocer un usuario/clave
para poder entrar de forma remota a esta máquina.

* Modificar el fichero `/etc/ssh/sshd_config` con `PermitRootLogin yes`.
* Para reiniciar el servicio hacemos `systemctl restart sshd`.
