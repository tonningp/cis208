# http://sourceware.org/gdb/wiki/FAQ: to disable the
# "---Type <return> to continue, or q <return> to quit---"
# in batch mode:
set width 0
set height 0
set verbose off
display/i $eip
# at entry point - cmd1
b _start
commands 1
  continue
end

# printf line - cmd2
b addtwo.asm:9
commands 2
  info register
  continue
end

# int b = line - cmd3
b addtwo.asm:10
commands 3
  info register
  continue
end

b addtwo.asm:11
commands 4
  info register
  continue
end

b addtwo.asm:12
commands 5
  info register
  continue
end


# note: even if arguments are shown;
# must specify cmdline arg for "run"
# when running in batch mode! (then they are ignored)
# below, we specify command line argument "2":
run     # run

#start # alternative to run: runs to main, and stops
#continue
