# set up
source debug/settings.gdb
# run the session
b b1
run
p *(&array1)@10
p *(&array2)@10
c
q
