set width 0
set height 0
set verbose off
b _start
display/i $eip
run
stepi
info memory
continue
#info register
#	stepi
#info register
#	stepi
#info register
#	stepi
#info register
#	stepi
#info register
#	stepi
#info register
#	stepi
#info register
#	stepi
#info register
#	stepi
printf "Done\n"
