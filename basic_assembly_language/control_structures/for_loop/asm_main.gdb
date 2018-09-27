# http://www.yolinux.com/TUTORIALS/GDB-Commands.html
#
set breakpoint pending on
set pagination off
# display/i $pc

define loop_print
set $total = $arg0
set $i = 0
   while($i<$total)
     set $i = $i + 1
     i r ecx
     c
   end
end
break loop_start
run
i r eflags
loop_print 10
q
