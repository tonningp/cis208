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

struct NumRec {
   short int x;
   int   y;
   double z;
};


void PRE_CDECL bitfield_size( struct S *s ) POST_CDECL;

int main()
{
	struct S s;
	s.f1 = 0x7; 
	s.f2 = 0x1 << 9; 
	s.f3 = 0x1 << 10; 
	s.f4 = 0x1 << 7; 
    bitfield_size(&s);
   
	printf("f1=%x f2=%x f3=%x f4=%x\n",s.f1,s.f2,s.f3,s.f4);
	printf("sizeof(SCSI_read_cmd) = %u\n",sizeof(struct SCSI_read_cmd));


	return 0;
}
