#!/bin/bash 

# -------------------------------------------------------#
# ----------------------- VARIAVEIS ---------------------#
ARQUIVO_DE_TITULOS="titulo.txt"



# -------------------------------------------------------#
# ---------------teste dependencias intalada ------------#
[ ! -x "$(which lynx)" ] && sudo apt install lynx -y # echo "Esta Instalado" && exit 0

# -------------------------------------------------------#
# Le um pagina da intenet, faz um filtro e cria um arquivo 
lynx -source http://lxer.com/ | grep blurb | sed 's/<div.*line">//;s/<\/span.*//' > titulos.txt

# Loop while para ler e printar na tela o nome do titulo
while read -r titulo_lxer
do 
echo -e "Titulo: ${titulo_lxer}"
done < "$ARQUIVO_DE_TITULOS"

