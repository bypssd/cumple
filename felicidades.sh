#!/bin/bash

# Animación Visual VIP para bypssd
# Configuración: Cortina de Confeti + Pastel + Globos

# Colores
ROJO='\033[0;31m'
VERDE='\033[0;32m'
AMARILLO='\033[1;33m'
AZUL='\033[0;34m'
ROSA='\033[1;35m'
CYAN='\033[0;36m'
NC='\033[0m'

# Ocultar cursor y limpiar
tput civis
printf "\033[H\033[J"

# --- ACTO 1: CORTINA DE CONFETI ---
for i in {1..10}; do
    printf "\033[H"
    echo -e "  ${ROSA}*${NC}      ${VERDE}.${NC}      ${AZUL}+${NC}      ${AMARILLO}o${NC}      ${ROJO}*${NC}"
    echo -e "      ${CYAN}+${NC}      ${ROSA}o${NC}      ${VERDE}*${NC}      ${AZUL}.${NC}      ${AMARILLO}+${NC}"
    echo -e "  ${AMARILLO}.${NC}      ${ROJO}*${NC}      ${CYAN}o${NC}      ${ROSA}+${NC}      ${VERDE}*${NC}"
    echo -e "      ${VERDE}o${NC}      ${AMARILLO}+${NC}      ${ROJO}.${NC}      ${CYAN}*${NC}      ${ROSA}o${NC}"
    echo -e "\n            ${AMARILLO}¡PREPARANDO FIESTA!${NC}"
    sleep 0.1
    printf "\033[H"
    echo -e "      ${CYAN}+${NC}      ${ROSA}o${NC}      ${VERDE}*${NC}      ${AZUL}.${NC}      ${AMARILLO}+${NC}"
    echo -e "  ${AMARILLO}.${NC}      ${ROJO}*${NC}      ${CYAN}o${NC}      ${ROSA}+${NC}      ${VERDE}*${NC}"
    echo -e "      ${VERDE}o${NC}      ${AMARILLO}+${NC}      ${ROJO}.${NC}      ${CYAN}*${NC}      ${ROSA}o${NC}"
    echo -e "  ${ROSA}*${NC}      ${VERDE}.${NC}      ${AZUL}+${NC}      ${AMARILLO}o${NC}      ${ROJO}*${NC}"
    echo -e "\n            ${AMARILLO}¡PREPARANDO FIESTA!${NC}"
    sleep 0.1
done

# --- ACTO 2: EL PASTEL Y GLOBOS ---
trap "tput cnorm; clear; exit" INT
pos=0
dir=1

while true; do
    printf "\033[H"
    
    echo -e "${CYAN}====================================================${NC}"
    echo -e "${CYAN}            HUB DE CUMPLEAÑOS - BYPSSD              ${NC}"
    echo -e "${CYAN}====================================================${NC}\n"

    # Globos Flotantes (Sincronizados)
    espacio=$(printf '%*s' "$pos" "")
    echo -e "${espacio}  ${ROJO} _ ${NC}            ${AMARILLO} _ ${NC}            ${VERDE} _ ${NC}"
    echo -e "${espacio}  ${ROJO}( )${NC}          ${AMARILLO}( )${NC}          ${VERDE}( )${NC}"
    echo -e "${espacio}   ${ROJO}|${NC}            ${AMARILLO}|${NC}            ${VERDE}|${NC}"

    # Velas Animadas
    v1="${AMARILLO}i${NC}"; v2="${ROJO}i${NC}"
    [[ $((RANDOM % 2)) -eq 0 ]] && va=$v1 || va=$v2
    [[ $((RANDOM % 2)) -eq 0 ]] && vb=$v1 || vb=$v2
    [[ $((RANDOM % 2)) -eq 0 ]] && vc=$v1 || vc=$v2

    # Pastel (Estructura Fija)
    echo -e "                ${va}   ${vb}   ${vc}"
    echo -e "                |   |   |"
    echo -e "             ${ROSA}~~~~~~~~~~~~~~~${NC}"
    echo -e "            ${ROSA}[               ]${NC}"
    echo -e "        ${CYAN}_________________________${NC}"
    echo -e "       ${CYAN}|                         |${NC}"
    echo -e "       ${CYAN}|     FELICIDADES ANDY    |${NC}"
    echo -e "       ${CYAN}|_________________________|${NC}"
    echo -e "      ${AMARILLO}[___________________________]${NC}"

    echo -e "\n${VERDE}  >> Protocolo de alegría ejecutado con éxito.${NC}"
    echo -e "${ROJO}  >> Presiona CTRL+C para salir.${NC}"

    # Lógica de movimiento suave
    if [ $pos -gt 15 ] || [ $pos -lt 1 ]; then
        dir=$((dir * -1))
    fi
    pos=$((pos + dir))

    sleep 0.15
done
