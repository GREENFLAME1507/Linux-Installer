#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'
NC='\033[0m'

echo "dealing with pre-install stuff.."
apt update
apt upgrade -y
clear
kalilogo="${BLUE}                                                                                         
   .........:::::::::...                                                                  
                     .:::----====--:.                                                     
                                 .::=++*=-:.                                              
                                        .-=**+=                                           
                   ....:::-----=============-*#                                           
      ..:::::::----::::::........   .......:.:#.                                          
 .......                          .::-=++***#-++                                          
                           .:-=+++=--:....     #+.        .....                           
                      .:-==-:.                 .##+=:.         :::.                       
                  .::-:.                        -####%%###*++-.   .:-.                    
              ::::.                           -*###+=----=+*#%%%%=:- :=:                  
          ..:.                             .+###+:            .-=*%@#=#==-                
                                          .###*:                   .-+#@**+               
                                          *##+                         *@@%*.             
                                         :##*                          .=*@%%.            
                                         =##+                              :*@*=.         
                                         :##*                                .+.          
                                          *##*.                                           
                                          .*###-                                          
                                            -*###=:                                       
                                              .=*###*+==-:..                              
                                                  -=*#%%%%%%%%##*+-:.                     
                                                       ..::--=+*#%%%@%##+=-.              
                                                                  :=#@#=:-+#%*=.          
                                                                     .+%%+.  :+##:        
                                                                        =%@+    .+*:      
                                                                          =%%:    .+=     
                                                                            +@=     :+    
                                                                             :%*     .-   
                                                                              .#*     ..  
                                                                               .#+        
                                                                                .%:       
                                                                                 :#       
                                                                                  +.      
                                                                                  .-      
                                                                                          "
echo "$kalilogo"
echo "${BLUE}Starting kali install......${NC}"
echo "_______________________________________________________________________________________________________________________________________________________________________________________________"
clear
echo "${RED}In the following prompt press allow!!${NC}"
read -n 1 -r -s -p $'Press enter to continue...\n'
termux-setup-storage
clear
echo "installing wget"
pkg install wget
clear
echo "${WHITE}Pulling files <~${NC}"
wget -O install-nethunter-termux https://offs.ec/2MceZWr
clear
echo"enabling and accessing..."
chmod +x install-nethunter-termux
clear
echo "Now in the following you will get 3 options choose the one you want"
echo "1= Full kali install"
echo "2= Minimal or with essentials only"
echo "3= nano or barebones kali with only basic features"
read -n 1 -r -s -p $'Press enter to continue...\n'
clear
echo "and when prompted to for 'delete downloaded rootfs file'"
echo "just press enter"
read -n 1 -r -s -p $'Press enter to continue...\n'
./install-nethunter-termux
clear
nethunter="${BLUE}
###  ##  ### ###  #### ##  ###  ##  ##  ###  ###  ##  #### ##  ### ###  ### ##   
  ## ##   ##  ##  # ## ##   ##  ##  ##   ##    ## ##  # ## ##   ##  ##   ##  ##  
 # ## #   ##        ##      ##  ##  ##   ##   # ## #    ##      ##       ##  ##  
 ## ##    ## ##     ##      ## ###  ##   ##   ## ##     ##      ## ##    ## ##   
 ##  ##   ##        ##      ##  ##  ##   ##   ##  ##    ##      ##       ## ##   
 ##  ##   ##  ##    ##      ##  ##  ##   ##   ##  ##    ##      ##  ##   ##  ##  
###  ##  ### ###   ####    ###  ##   ## ##   ###  ##   ####    ### ###  #### ##  "
echo "$nethunter"${NC}
echo "~Type ${BLUE}nethunter${NC} to start kali~"
read -n 1 -r -s -p $'Press enter to continue...\n'

exit
