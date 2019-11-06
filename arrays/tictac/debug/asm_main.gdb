# set up
source debug/settings.gdb
# run the session


#x/nfu addr
#x addr
#x
#Use the x command to examine memory.
#n, f, and u are all optional parameters that specify how much memory to display and how to format it; addr is an expression giving the address where you want to start displaying memory. If you use defaults for nfu, you need not type the slash `/'. Several commands set convenient defaults for addr.
#
#n, the repeat count
#The repeat count is a decimal integer; the default is 1. It specifies how much memory (counting by units u) to display.
#f, the display format
#The display format is one of the formats used by print, `s' (null-terminated string), or `i' (machine instruction). The default is `x' (hexadecimal) initially. The default changes each time you use either x or print.
#u, the unit size
#The unit size is any of
#b
#Bytes.
#h
#Halfwords (two bytes).
#w
#Words (four bytes). This is the initial default.
#g
#Giant words (eight bytes).
#Each time you specify a unit size with x, that size becomes the default unit the next time you use x. (For the `s' and `i' formats, the unit size is ignored and is normally not written.)



b b1
run
printf "a1="
x/5cb &a1
printf "a2="
x/5dh &a2
printf "a3="
x/5dh &a3
printf "a4="
p a4@5
printf "a5="
p a5@5
c
q
