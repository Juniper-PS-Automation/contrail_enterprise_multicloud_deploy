rm host_block.txt
rm host_ini.txt
vmm ping | awk ' { t = $1; $1 = $2; $2 = t; {print $1 "    "$2;} } ' > host_block.txt
vmm ping | awk ' {print $1 " ""PRIVATE_IP="$2;} ' > host_ini.txt