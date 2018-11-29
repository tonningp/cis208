#include<stdio.h>
#include<stddef.h>
#include "cdecl.h"

struct S {
   unsigned f1 : 3;
   unsigned f2 : 10;
   unsigned f3 : 11;
   unsigned f4 : 8;
};

struct SCSI_read_cmd
{
   unsigned char opcode;
   unsigned char lba_msb : 5;
   unsigned char lba_mid;
   unsigned char lba_lsb;
   unsigned char transfer_length;
   unsigned char control;
}
#if defined(__GNUC__)
   __attribute__((packed))
#endif
;

typedef struct {
   short int x;
   int   y;
   double z;
} NumRec;


void PRE_CDECL zero_y( NumRec *nr ) POST_CDECL;

int main()
{
    NumRec nr;

    nr.y = 0xFFFE0001;
    zero_y(&nr);
    printf("nr.y = %x\n",nr.y);

    printf("offsetof(NumRec,x) = %d\n",offsetof(NumRec,x));
    printf("offsetof(NumRec,y) = %d\n",offsetof(NumRec,y));
    printf("offsetof(NumRec,z) = %d\n",offsetof(NumRec,z));
    printf("sizeof(NumRec) = %d\n",sizeof(NumRec));

	return 0;
}
