# http://www.yolinux.com/TUTORIALS/GDB-Commands.html
#
set breakpoint pending on
set pagination off
# display/i $pc
b asm_main
r
stepi
stepi
stepi
printf "Line: "
l 24,24
i r al
i r eflags
stepi
printf "Line: "
l 25,25
i r al
i r eflags
printf "Line: "
l 26,26
i r al
i r eflags
c
q
