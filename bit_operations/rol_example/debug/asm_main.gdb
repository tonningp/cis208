# set up
source debug/settings.gdb
break asm_main

# run the session

run
i r eflags
ni
set $total = 4
set $i = 0
printf "start:"
while($i<$total)
	 ni
     i r ax
     p/t $ax
	 i r eflags
     set $i = $i + 1
end
printf "end"
c
q
