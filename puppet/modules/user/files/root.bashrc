if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

if [[ $- == *i* ]]; then
    export PATH=""
fi

#PATH="/bin:/usr/bin:/sbin:/usr/sbin"
