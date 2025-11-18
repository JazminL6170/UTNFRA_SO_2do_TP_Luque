echo "Para ejecutar este script tiene la siguiente sintaxis:"
echo "./LuqueAltaUser-Groups.sh <USUARIO_CLAVE> <RUTA_LISTA_USUARIOS>"

USUARIO_CLAVE=$1
LISTA=$2
ANT_IFS=$IFS
IFS=$'\n'
CLAVE_USUARIO=$(sudo grep "^$USUARIO_CLAVE:" /etc/shadow | awk -F ':' '{print $2}')
for LINEA in `cat $LISTA |  grep -v ^#`
do
        USUARIO=$(echo  $LINEA |awk -F ',' '{print $1}')
        GRUPO=$(echo  $LINEA |awk -F ',' '{print $2}')
        HOME_USUARIO=$(echo  $LINEA |awk -F ',' '{print $3}')
        sudo groupadd $GRUPO

        sudo useradd -m -s /bin/bash -g "$GRUPO" -d "$HOME_USUARIO" -p "$CLAVE_USUARIO" "$USUARIO"
done
IFS=$ANT_IFS
