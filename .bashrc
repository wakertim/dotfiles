#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
xset r rate 180 70


# alias ls='ls --color=auto'
# alias grep='grep --color=auto'
PS1=': '
alias internet='sudo wpa_supplicant -B -iwlan0 -c ~/config/wpa_supplicant.conf -f log && sudo dhcpcd wlan0'
alias d=". cd-dir"
alias a='vim "$(typst-live-all)"'
alias f=". open-file"
alias l="clear && ls -la"
alias freecad="LD_PRELOAD=/usr/lib/libdrm_amdgpu.so.1 .//home/waker/opt/FreeCAD_1.1.3-Linux-x86_64-py311.AppImage"
export EDITOR="emacs"
export VISUAL="emacs"
export PATH="$PATH:/home/waker/.cargo/bin:/home/waker/scripts"

setxkbmap -option "ctrl:swapcaps" us

. "$HOME/.local/bin/env"
