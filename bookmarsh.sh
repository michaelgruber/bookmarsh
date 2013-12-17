function bookmarsh() {
    case $1 in
        new ) _new $2;;
        remove ) _remove $2;;
        here ) _here $2;;
        list ) _list;;
        help | --help | -h ) _help;;
        * ) echo _help;;
    esac
}

function _new() {
    echo $1
}

function _remove() {
    echo $1
}

function _here() {
    echo 'Here.'
}

function _list() {
    echo 'Listing.'
}

function _help() {
    echo 'Help.'
}