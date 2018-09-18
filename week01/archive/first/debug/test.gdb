# http://sourceware.org/gdb/wiki/FAQ: to disable the
# "---Type <return> to continue, or q <return> to quit---"
# in batch mode:
set width 0
set height 0
set verbose off

# at entry point - cmd1
b main
commands 1
  print argc
  continue
end

# printf line - cmd2
b test.c:17
commands 2
  p i
  p b
  continue
end

# int b = line - cmd3
b test.c:16
commands 3
  p i
  p b
  continue
end

# show arguments for program
show args
printf "Note, however: in batch mode, arguments will be ignored!\n"

# note: even if arguments are shown;
# must specify cmdline arg for "run"
# when running in batch mode! (then they are ignored)
# below, we specify command line argument "2":
run 2     # run

#start # alternative to run: runs to main, and stops
#continue
