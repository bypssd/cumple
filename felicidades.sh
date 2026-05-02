#!/bin/bash

# Protocolo de animación y audio melódico por bypssd
# Presiona Ctrl+C para detener la fiesta

# Colores ANSI
ROJO='\033[0;31m'
VERDE='\033[0;32m'
AMARILLO='\033[1;33m'
ROSA='\033[1;35m'
CYAN='\033[0;36m'
NC='\033[0m'

# Función para la música con tonos agudos y graves (Solo macOS)
tocar_musica() {
    while true; do
        # Happy Birthday to you (Notas: Sol Sol La Sol Do Si)
        say "[[pitch 50]] pip pip [[pitch 60]] pip [[pitch 50]] pip [[pitch 70]] pip [[pitch 65]] piip" 
        sleep 0.2
        # Happy Birthday to you (Notas: Sol Sol La Sol Re Do)
        say "[[pitch 50]] pip pip [[pitch 60]] pip [[pitch 50]] pip [[pitch 80]] pip [[pitch 70]] piip"
        sleep 0.2
        # Happy Birthday dear Andy (Notas: Sol Sol Sol' Mi Do Si La)
        say "[[pitch 50]] pip pip [[pitch 90]] pip [[pitch 75]] pip [[pitch 60]] pip [[pitch 55]] pip [[pitch 50]] piip"
        sleep 0.2
        # Happy Birthday to you (Notas: Fa' Fa' Mi Do Re Do)
        say "[[pitch 85]] pip pip [[pitch 75]] pip [[pitch 65]] pip [[pitch 75]] pip [[pitch 65]] piip"
        sleep 1
    done
}

# Limpiar pantalla y ocultar cursor
printf "\033[H\033[J"
tput civis

# Lanzar música en segundo plano si es macOS
if [[ "$OSTYPE" == "darwin"* ]]; then
    tocar_musica > /dev/null 2>&1 &
    musica_pid=$!
fi

# Capturar salida (Ctrl+C)
trap "kill $musica_pid 2>/dev/null; tput cnorm; clear; echo -e '${VERDE}Protocolo terminado. ¡Feliz cumple, Andy!${NC}'; exit" INT

pos=0
dir=1

while true; do
    printf "\033[H"
    
    echo -e "${CYAN}***************************************************"
    echo -e "   BYPASS AUDIO SYSTEM: MELODIC MODE ENABLED       "
    echo -e "***************************************************${NC}"
    echo ""

    # Globos con movimiento
    espacio=$(printf '%*s' "$pos" "")
    echo -e "${espacio}${ROJO}  _   ${VERDE} _   ${AMARILLO} _   ${ROSA} _  ${NC}"
    echo -e "${espacio}${ROJO} ( )  ${VERDE}( )  ${AMARILLO}( )  ${ROSA}( ) ${NC}"
    echo -e "${espacio}${ROJO}  |   ${VERDE} |   ${AMARILLO} |   ${ROSA} |  ${NC}"

    # Tarta con velas animadas
    parpado=$((RANDOM % 2))
    [[ $parpado -eq 0 ]] && vela="${AMARILLO}i${NC}" || vela="${ROJO}i${NC}"
    
    echo ""
    echo -e "           $vela   $vela   $vela   $vela   $vela"
    echo -e "           |   |   |   |   |"
    echo -e "      ${ROSA}___________________________${NC}"
    echo -e "     ${ROSA}|                           |${NC}"
    echo -e "     ${VERDE}|    ¡FELICIDADES ANDY!     |${NC}"
    echo -e "     ${ROSA}|___________________________|${NC}"
    echo -e "    ${AMARILLO}|                             |${NC}"
    echo -e "    ${AMARILLO}|   🎶  HACKING MELODY...  🎶   |${NC}"
    echo -e "    ${AMARILLO}|_____________________________|${NC}"

    echo ""
    echo -e "${CYAN}>> Ejecutando bypass de audio en frecuencia variable...${NC}"
    echo -e "${ROJO}>> CTRL+C para detener el sistema.${NC}"

    # Lógica de rebote
    pos=$((pos + dir))
    [[ $pos -gt 25 || $pos -lt 1 ]] && dir=$((dir * -1))

    sleep 0.1
done
