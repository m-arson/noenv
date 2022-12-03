IFS=$'\n' data=(`find /home/arson/Downloads/* -prune -type f`); for d in ${data[@]}; do echo $d; done
