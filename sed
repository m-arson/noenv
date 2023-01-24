
# Get Line
cat CRApp6_SystemOut_23.01.24_13.11.08.log | cut -c57 | grep -n "E" | cut -d":" -f1

# Included
sed -n '480,/^\[/p' CRApp6_SystemOut_23.01.24_13.11.08.log

# Before Line
sed -n '/^\[/{480p}' CRApp6_SystemOut_23.01.24_13.11.08.log
