# set up
source debug/settings.gdb
# run the session
b end
run
x/50dd &array
c
q
