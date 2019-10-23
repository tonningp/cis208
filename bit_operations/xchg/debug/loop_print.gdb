# The following is loop_print as a gdb macro
define loop_print
set $total = $arg0
set $i = 0
   while($i<$total)
     set $i = $i + 1
     i r ecx
     c
   end
end

source debug/loop_print.py
