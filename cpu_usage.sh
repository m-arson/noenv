lparstat 1 10 | tail +6 | awk '{print $1,"\n"$2}' | awk '{total+=$1} END {total/=10} END {printf "CPU Usage : %.2f %%\n", total}'
