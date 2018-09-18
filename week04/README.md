### Basic Assembly Language

- Control Structures
  - [Comparisons](cmp)

      **The [FLAGS](https://en.wikipedia.org/wiki/FLAGS_register#FLAGS) register**

      For unsigned integers, there are two flags (bits in the [FLAGS](https://en.wikipedia.org/wiki/FLAGS_register#FLAGS) register) that are important: the zero (**ZF**) and carry (**CF**) flags. The zero flag is set (1) if the resulting difference would be zero. The carry flag is used as a borrow flag for subtraction.

      For signed integers, there are three flags that are important: the zero (ZF) flag, the overflow (OF) flag and the sign (SF) flag. The overflow flag is set if the result of an operation overflows (or underflows). The sign flag is set if the result of an operation is negative. If vleft = vright, the ZF is set (just as for unsigned integers). If vleft > vright, ZF is unset and SF = OF. If vleft < vright, ZF is unset and SF != OF.

      Do not forget that other instructions can also change the FLAGS register,
      not just CMP.

  - [Branch Instructions](jmp)

    ![alt text](https://i.imgur.com/Gn5OKMi.png?1 "Table from textbook")

    Branch instructions can transfer execution to arbitrary points of a program.  In other words, they act like a goto. There are two types of branches: unconditional and conditional. An unconditional branch is just like a goto, it always makes the branch. A conditional branch may or may not make the branch depending on the flags in the FLAGS register. If a conditional branch does not make the branch, control passes to the next instruction.  The JMP (short for jump) instruction makes unconditional branches. Its single argument is usually a code label to the instruction to branch to.  The assembler or linker will replace the label with correct address of the instruction.  This is another one of the tedious operations that the assembler does to make the programmer’s life easier. It is important to realize that the statement immediately after the JMP instruction will never be executed unless another instruction branches to it!

    There are several variations of the jump instruction:


    - **SHORT**

        This jump is very limited in range. It can only move up or down 128 bytes in memory. The advantage of this type is that it uses less memory than the others. It uses a single signed byte to store the displacement of the jump. The displacement is how many bytes to move ahead or behind. (The displacement is added to EIP). To specify a short jump, use the SHORT keyword immediately before the label in the JMP instruction.
    - **NEAR**

        This jump is the default type for both unconditional and conditional branches, it can be used to jump to any location in a segment.  Actually, the 80386 supports two types of near jumps. One uses two bytes for the displacement. This allows one to move up or down roughly 32,000 bytes. The other type uses four bytes for the displacement, which of course allows one to move to any location in the code segment. The four byte type is the default in 386 protected mode. The two byte type can be specified by putting the WORD keyword before the label in the JMP instruction.
    - **FAR**

        This jump allows control to move to another code segment. This is a very rare thing to do in 386 protected mode.

    ![alt text](https://i.imgur.com/vh0bzmT.png "Table from textbook")

  - The loop Instructions

- Translating Standard Control Structures
  - If Statements
  - While loops
  - Do while loops

