# set up
source debug/settings.gdb
break asm_main

# run the session

printf "start:\n"
run
ni
set $i = 0
set $total = 3
while($i<$total)
     i r esp
#     i frame
     x/x $esp
	 ni
     set $i = $i + 1
end
set $i = 0
set $total = 3
while($i<$total)
     i r eax ebx ecx
     x/x $esp
	 ni
     set $i = $i + 1
end
printf "end\n"
c
q
