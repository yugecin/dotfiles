LC_CTYPE=en_US.UTF-8
LC_ALL=en_US.UTF-8
LANG=en_US.UTF-8
LANGUAGE=en_US.UTF-8

export LC_CTYPE
export LC_ALL
export LANG
export LANGUAGE

if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h \[\033[01;34m\]\W \$\[\033[00m\] '
fi

[[ -f "/home/robin/.config/autopackage/paths-bash" ]] && . "/home/robin/.config/autopackage/paths-bash"

#[[ -z $DISPLAY && $XDG_VTNR -eq 1 && $(tty) = /dev/tty1 ]] && exec startx #xinit

# MOAR WINDOW MANAGERS
XRC=/home/robin/.xinitrc
if [[ -z $DISPLAY ]] && [[ -f "$XRC.$XDG_VTNR" ]] && cp $XRC.$XDG_VTNR $XRC
then
	exec startx
else
	cat ~/banner | lolcat -p 0.5
fi

