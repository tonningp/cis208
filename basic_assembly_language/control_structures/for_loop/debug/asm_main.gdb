# set up
source debug/settings.gdb
source debug/loop_print.gdb
break loop_start

# run the session

run
i r eflags
call $loop_print($ecx,"i r ecx","i r eax","i r eflags")
q
