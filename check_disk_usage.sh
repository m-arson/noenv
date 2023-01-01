 df -sg|egrep -v "(proc|gpfs)"|tail +2|awk '{print $2,$3}'|awk '{t+=$1;f+=$2}END{p=f/t*100}END{printf "Disk Free : %.2f / %.2f (%.2f %%)\n",f,t,p}'
