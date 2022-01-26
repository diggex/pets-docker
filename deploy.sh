usage() {
    echo "Usage: sh depoly.sh [start|stop|rm]"
    exit 1
}

# start all modules 
start(){
    docker-compose up -d pets-nginx pets-php
}

# stop all modules
stop(){
    docker-compose stop
}

# remove all modules
rm(){
    docker-compose rm
}

case "$1" in
"start")
    start
;;
"stop")
    stop
;;
"rm")
    rm
;;
*)
    usage
;;
esac
