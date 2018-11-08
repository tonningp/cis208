/*
 * Driver file for array1.asm file
 */

#include <stdio.h>

#include "cdecl.h"

int PRE_CDECL asm_sort( int, int ) POST_CDECL;

int main()
{
  int ret_status;
  ret_status = asm_sort(10,1000);
  return ret_status;
}

