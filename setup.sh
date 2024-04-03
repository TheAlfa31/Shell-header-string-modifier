echo -e "\033[31m
  ____________   ___    __    _________ 
 /_  __/ ____/  /   |  / /   / ____/   |
  / / / /      / /| | / /   / /_  / /| |
 / / / /___   / ___ |/ /___/ __/ / ___ |
/_/  \____/  /_/  |_/_____/_/   /_/  |_|
                                        
Shell header string customizer
\033[37m"                                                               

echo -e "\033[32m"
read -p "Please enter root name: " as
echo -e "\033[37m"

sleep 3
cd $PREFIX
cd etc
rm -rf bash.bashrc

echo "
# Telegram: https://t.me/OfficialAlfa - TcALFA
# Command history tweaks:
# - Append history instead of overwriting
#   when shell exits.
# - When using history substitution, do not
#   exec command immediately.
# - Do not save to history commands starting
#   with space.
# - Do not save duplicated commands.
shopt -s histappend
shopt -s histverify
export HISTCONTROL=ignoreboth

# Default command line prompt.
PROMPT_DIRTRIM=2
PS1='\033[34m┌──(\033[31mroot㉿$as\033[34m)-[\033[37m\w\033[34m]\033[34m
└─\033[31m#\033[37m '

# Handles nonexistent commands.
# If user has entered command which invokes non-available
# utility, command-not-found will give a package suggestions.
if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
	command_not_found_handle() {
		/data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
	}
fi

[ -r /data/data/com.termux/files/usr/share/bash-completion/bash_completion ] && . /data/data/com.termux/files/usr/share/bash-completion/bash_completion
" > bash.bashrc
clear
echo -e "\033[32mTcALFA - t.me/OfficialAlfa"
sleep 2
cd $HOME
echo "Shell header string has been finished!"
echo "Please open a new window to see the change."
sleep 2
exit

