LC_CTYPE=en_US.UTF-8
LC_ALL=en_US.UTF-8
LANG=en_US.UTF-8
LANGUAGE=en_US.UTF-8

export LC_CTYPE
export LC_ALL
export LANG
export LANGUAGE

[[ -f ~/.bashrc ]] && . ~/.bashrc

#[[ -z $DISPLAY && $XDG_VTNR -eq 1 && $(tty) = /dev/tty1 ]] && exec startx #xinit

# MOAR WINDOW MANAGERS
XRC=/home/robin/.xinitrc
if [[ -z $DISPLAY ]] && [[ -f "$XRC.$XDG_VTNR" ]] && cp $XRC.$XDG_VTNR $XRC
then
	exec startx
#else
#	cat ~/banner | lolcat -p 0.5
fi

