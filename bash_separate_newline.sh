IFS=$'\n' data=(`find /home/arson/Downloads/* -prune -type f`); for d in ${data[@]}; do echo $d; done

OR

IFS=, read -ra dataa < crossbone.txt; echo ${dataa[0]}

OR

readarray -t my_array < <(sed ':a;N;$!ba;s/\n/,/g' data.txt)
