
# Get Line
cat CRApp6_SystemOut_23.01.24_13.11.08.log | cut -c57 | grep -n "E" | cut -d":" -f1

# Included
sed -n '480,/^\[/p' CRApp6_SystemOut_23.01.24_13.11.08.log

# Before Line
sed -n '/^\[/{480p}' CRApp6_SystemOut_23.01.24_13.11.08.log


# Get it and replace letter E with number of line based on previous result
cat CRApp6_SystemOut_23.01.24_13.11.08.log | cut -c57 | grep -n "E" | cut -d":" -f1 | xargs -I {} sed -i {}'s/E/$(echo {})/' CRApp6_SystemOut_23.01.24_13.11.08.log

# Until found '#'

cat CRApp6_SystemOut_23.01.24_13.11.08.log | cut -c57 | grep -n "E" | cut -d":" -f1 | xargs -I {} sed -n {}','$'p' CRApp6_SystemOut_23.01.24_13.11.08.log | awk '{ if($0 ~ /#/) exit; print }'

# Temporary Solution

cat CRApp6_SystemOut_23.01.24_13.11.08.log | cut -c57 | grep -n "E" | cut -d":" -f1 | xargs -I {} sed -n "/^\[/{$(echo {})p}" CRApp6_SystemOut_23.01.24_13.11.08.log

# Temporary 2

name="CRApp6a_SystemOut_23.01.24_13.11.08.log"; cat $name | cut -c57 | grep -n "E" | cut -d":" -f1 | xargs -I {} sed -n "/^\[/{$(echo {})p}" $name


# Final (Maybe?)

sed -n "${n}p;$((n+1)),$ {/^\[/q;p;}" CRApp6_SystemOut_23.01.24_13.11.08.log


# Finallyyyyyyyyy

name="CRApp6_SystemOut_23.01.24_13.11.08.log"; cat $name | cut -c57 | grep -n "E" | cut -d":" -f1 | xargs -I {} sh -c 'num={}; sed -n "${num}p;$((num+1)),$ {/^\[/q;p;}" CRApp6_SystemOut_23.01.24_13.11.08.log'

# More

dany="Current"; name="Arson"; echo $name | xargs -I {} sh -c 'echo $dany' -- dany="$dany"

OR

dany="Current"; name="Arson"; echo $name | xargs -I {} env dany="$dany" sh -c 'echo $dany'

# Final One (Probably??)

filename="CRApp6_SystemOut_23.01.24_13.11.08.log"; cat $filename | cut -c57 | grep -n "E" | cut -d":" -f1 | xargs -I {} env filename="$filename" sh -c 'ln={}; sed -n "${ln}p;$((ln+1)),$ {/^\[/q;p;}" $filename'

# Don't Know, Maybe useful someday??

cat CRApp6_SystemOut_23.01.24_13.11.08.log | cut -c57 | grep -n E | cut -d":" -f1 | xargs -I {} sed -n {}'p' CRApp6_SystemOut_23.01.24_13.11.08.log | awk '{print $7}' | sed '/^$/d'

# Can be added in the future, previously just using grep 'E' in c57, now grep ' E ' in c56-58

cat CRApp6a_SystemOut_23.01.24_13.11.08.log | cut -c56-58 | grep -n " E " | cut -d":" -f1 | xargs -I {} sed -n {}'p' CRApp6a_SystemOut_23.01.24_13.11.08.log | awk '{print $7}' | sed '/^$/d' | sort | uniq


# Another Cool One (Filter only one message)

cat CRApp6a_SystemOut_23.01.24_13.11.08.log | grep -n "WTRN0074E:" | awk -F":" '{x=$1; $1=""; y=$0; print x, length(y)}' | sort -urnk2 | awk '{print $1}' | xargs -I {} sed -n {}'p' CRApp6a_SystemOut_23.01.24_13.11.08.log

# Get Only Unique

n="CRApp6a_SystemOut_23.01.24_13.11.08.log"; cat $n | cut -c56-58 | grep -n " E " | cut -d":" -f1 | xargs -I {} env ln={} filename=$n sh -c 'echo "|$ln"; sed -n $ln"p" $filename' | tr '\n' ' ' | tr "|" "\n" | sed "/^$/d" | awk '{x=$1; $1=""; print x, $8"_"length($0)}' | sort -uk2 | awk '{print $1}' | xargs -I {} sed -n {}'p' $n

# Combine using cat before find uniq

cat *.log > proc.log; n="proc.log"; cat $n | cut -c56-58 | grep -n " E " | cut -d":" -f1 | xargs -I {} env ln={} filename=$n sh -c 'echo "|$ln"; sed -n $ln"p" $filename' | tr '\n' ' ' | tr "|" "\n" | sed "/^$/d" | awk '{x=$1; $1=""; print x, $8"_"length($0)}' | sort -uk2 | awk '{print $1}' | xargs -I {} sed -n {}'p' $n; rm -r $n
