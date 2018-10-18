# http://www.yolinux.com/TUTORIALS/GDB-Commands.html
#
set breakpoint pending on
set pagination off
# display/i $pc
break b1
b else
printf "Running the Program\n"
run
i r eflags
c 
i r eflags
c
q
