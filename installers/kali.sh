#!/bin/bash
echo "dealing with pre-install stuff.."
apt update
apt upgrade -y
clear
kalilogo="                                                                                         
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
echo "Starting kali install......"
echo "_______________________________________________________________________________________________________________________________________________________________________________________________"
echo "In the following prompt press allow!!"
termux-setup-storage
clear
echo "installing wget"
pkg install wget
clear
echo "Pulling files <~"
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
nethunter="
###  ##  ### ###  #### ##  ###  ##  ##  ###  ###  ##  #### ##  ### ###  ### ##   
  ## ##   ##  ##  # ## ##   ##  ##  ##   ##    ## ##  # ## ##   ##  ##   ##  ##  
 # ## #   ##        ##      ##  ##  ##   ##   # ## #    ##      ##       ##  ##  
 ## ##    ## ##     ##      ## ###  ##   ##   ## ##     ##      ## ##    ## ##   
 ##  ##   ##        ##      ##  ##  ##   ##   ##  ##    ##      ##       ## ##   
 ##  ##   ##  ##    ##      ##  ##  ##   ##   ##  ##    ##      ##  ##   ##  ##  
###  ##  ### ###   ####    ###  ##   ## ##   ###  ##   ####    ### ###  #### ##  "
echo "$nethunter"
echo "~Type nethunter to start kali~"
read -n 1 -r -s -p $'Press enter to continue...\n'

exit
