# set up
source debug/settings.gdb
break asm_main

# run the session

run
i r eflags
set $count = 6
while $count > 0
    ni
    i r ax
    printf "ax="
    p /t $ax
    set $count = $count - 1
end
c
q
