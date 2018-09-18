### Basic Assembly Language

- Control Structures
  - [Comparisons](cmp)

      **The FLAGS register**

      For unsigned integers, there are two flags (bits in the FLAGS register) that are important: the zero (**ZF**) and carry (**CF**) flags. The zero flag is set (1) if the resulting difference would be zero. The carry flag is used as a borrow flag for subtraction.

  - [Branch Instructions](jmp)

    ![alt text](https://i.imgur.com/Gn5OKMi.png?1 "Table from textbook")

    - **SHORT**

        This jump is very limited in range. It can only move up or down 128 bytes in memory. The advantage of this type is that it uses less memory than the others. It uses a single signed byte to store the displacement of the jump. The displacement is how many bytes to move ahead or behind. (The displacement is added to EIP). To specify a short jump, use the SHORT keyword immediately before the label in the JMP instruction.
    - **NEAR**

        This jump is the default type for both unconditional and conditional branches, it can be used to jump to any location in a segment.  Actually, the 80386 supports two types of near jumps. One uses two bytes for the displacement. This allows one to move up or down roughly 32,000 bytes. The other type uses four bytes for the displacement, which of course allows one to move to any location in the code segment. The four byte type is the default in 386 protected mode. The two byte type can be specified by putting the WORD keyword before the label in the JMP instruction.
    - **FAR**

        This jump allows control to move to another code segment. This is a very rare thing to do in 386 protected mode.

  - The loop Instructions
- Translating Standard Control Structures
  - If Statements
  - While loops
  - Do while loops

