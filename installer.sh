#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'
PINK='\033[0;35m'
NC='\033[0m'


clear
logo="${YELLOW}
####     ###  ##  ##  ##            ###  ##             ##     ### ##   ##   ##  
 ##        ## ##  ### ##              ## ##              ##     ##  ##   ## ##   
 ##       # ## #   ###               # ## #            ## ##    ##  ##  # ### #  
 ##       ## ##     ###              ## ##             ##  ##   ## ##   ## # ##  
 ##       ##  ##     ###             ##  ##            ## ###   ## ##   ##   ##  
 ##  ##   ##  ##  ##  ###            ##  ##            ##  ##   ##  ##  ##   ##  
### ###  ###  ##  ##   ##           ###  ##           ###  ##  #### ##  ##   ##  
                                                                                 
"
echo"$logo"
echo "What Linux distro do you want to install?:"
echo "1. ${BLUE}Kali"
echo "2. ${YELLOW}ubuntu"
echo "3. ${PINK}Debian!"
echo "4. ${RED}cancel installation!"
read -p "Enter your choice (1 or 2): " choice


case $choice in
    1)
      ${BLUE} echo "executing chosen options"
       cd installers
       chmod +x kali-installer-lna.sh
       rm ubuntu-installer-lna.sh
       rm debian-installer-lna.sh
      ./kali-installer-lna.sh
        ;;
    2)
      ${YELLOW} echo "executing chosen options"
       cd installers
       chmod +x ubuntu-installer-lna.sh
       rm kali-installer-lna.sh
       rm debian-installer-lna.sh
      ./ubuntu-installer-lna.sh
        ;;
        
     3)
       ${YELLOW} echo "executing chosen options"
        cd installers
        chmod +x debian-installer-lna.sh
        rm ubuntu-installer-lna.sh
        rm kali-installer-lna.sh
       ./debian-installer-lna.sh
        ;;
        
    4)
    ${RED}   clear
       echo "ok cancelling install..."
       echo "install canceled"
       
       exit
        ;;
    *)
        echo "choose within the following options."
        ;;
esac
