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

# The following is a python class that will print the loop a specified number of times
python

class LoopPrint(gdb.Function):
    """Print a loop the specfied number of times"""
    def __init__(self):
        super(LoopPrint,self).__init__("loop_print")

    def invoke (self,count,*cmd):
        i = 0
        while i < count:
            for c in cmd:
                gdb.execute(c.string())
            gdb.execute('c')
            i = i + 1
        return count

LoopPrint()

end
