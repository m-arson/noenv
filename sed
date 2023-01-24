
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
