# http://www.yolinux.com/TUTORIALS/GDB-Commands.html
#
set breakpoint pending on
set pagination off
# display/i $pc
b asm_main
r
x/1xb &a
x/1db &a
x/1xb &b
x/1db &b
x/1xb &c
x/1db &c
x/1xb &d
x/1db &d
stepi
stepi
stepi
printf "Line: "
l 31,31
i r ax
i r eflags
i r al
i r eflags
stepi
printf "Line: "
l 32,32
i r al
i r eflags
stepi
printf "Line: "
l 33,33
i r al
i r cl
i r eflags
stepi
printf "Line: "
l 34,34
i r al
i r cl
i r eflags
stepi
printf "Line: "
l 35,35
i r al
i r eflags
c
q
