function bookmarsh() {
    case $1 in
        new ) __new $2 $3;;
        remove ) __remove $2;;
        here ) __here $2;;
        list ) __list;;
        help | --help | -h ) __help;;
        * ) __help;;
    esac
}

# Setup directory store file
if [ ! -n "$MARSHDIRS" ]; then
    MARSHDIRS=~/.marshdirs
fi
touch $MARSHDIRS

function to() {
    echo "Goes to $1."
}

function whereis() {
    echo "Prints path of $1."
}

function __new() {
    echo "export MARSHDIR_$1=\"$2\"" >> $MARSHDIRS
}

function __remove() {
    echo "Removes $1."
}

function __here {
    echo "Book $1 in $(pwd)."
}

function __list {
    echo 'Prints marsh list.'
}

function __help {
    echo 'Help.'
}