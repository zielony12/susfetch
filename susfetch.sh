#!/bin/sh

sus_os=$(uname -o)
sus_dist=$(cat /etc/os-release | sed -n '1p' | sed 's/NAME=//I' | sed 's/"//g')
sus_kernel=$(uname -sr)
sus_shell=$(basename $SHELL)
sus_uptime=$(uptime -p | sed 's/up //I')
sus_cpu=$(sed -n "5p" /proc/cpuinfo | sed 's/model name	: //I')
sus_arch=$(uname -m)

echo ""
echo -e "\033[1;31m    ___    \033[1;32m${USER}@${HOSTNAME}"
echo -e "\033[1;31m  / \033[1;36m___\033[1;31m \\  \033[1;32mOS:\033[1;0m ${sus_os} ${sus_dist}"
echo -e "\033[1;31m | \033[1;36m|___|\033[1;31m | \033[1;32mKernel:\033[1;0m ${sus_kernel}"
echo -e "\033[1;31m |       | \033[1;32mShell:\033[1;0m ${sus_shell}"
echo -e "\033[1;31m |  ___  | \033[1;32mUptime:\033[1;0m ${sus_uptime}"
echo -e "\033[1;31m | |   | | \033[1;32mProcessor:\033[1;0m ${sus_cpu}"
echo -e "\033[1;31m |_|   |_| \033[1;32mArchitecture:\033[1;0m ${sus_arch}\033[1;0m"
echo ""
