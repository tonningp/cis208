#include <stdio.h>
#include <stdlib.h>

int icount = 1; // default value

main(int argc, char *argv[])
{
  int i;

  if (argc == 2) {
    icount = atoi(argv[1]);
  }

  i = icount;
  while (i > -1) {
    int b = 5 / i;
    printf(" 5 / %d = %d \n", i, b );
    i = i - 1;
  }

  printf("Finished\n");
  return 0;
}
