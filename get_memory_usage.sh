# total_free   = total - free + buffer + cache
# memory_usage = (total-total_free)/total * 100


free -m | grep Mem | xargs | cut -d" " -f2,3,6 | awk '{res=$1-$2+$3; d=($1-res)/$1*100}{printf "Memory Usage : %.2f %%\n", d}'
