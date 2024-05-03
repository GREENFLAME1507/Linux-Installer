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
logo="${PINK}

${NC}"

echo "dealing with pre-install stuff.."
apt update
apt upgrade -y
clear
echo "$logo"
echo "${YELLOW}Starting ubuntu install.......${NC}"
echo "_______________________________________________________________________________________________________________________________________________________________________________________________"
clear
echo "${RED}In the following prompt press allow!!${NC}"
read -n 1 -r -s -p $'Press enter to continue...\n'
termux-setup-storage
clear
${CYAN}
echo "installing wget"
pkg install wget
clear
echo "Installing X11-repo..."
pkg install x11-repo
clear
echo "Installing Pulseaudio"
pkg install pulseaudio -y
clear
echo "Installing Proot-distro"
pkg install proot-distro -y
clear
echo "Installing Debian"
proot-distro install debian
clear
echo "Setting up Pulseaudio"
pulseaudio --start --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" --exit-idle-time=-1
clear
echo ""
echo "To login type proot-distro login ${PINK}debian${NC}"
read -n 1 -r -s -p $'Press enter to continue...\n'

exit
