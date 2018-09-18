### Basic Assembly Language

- Control Structures
  - [Comparisons](cmp)
  - [Branch Instructions](jmp)

    ![alt text](https://i.imgur.com/Gn5OKMi.png?1 "Table from textbook")

    - SHORT
        This jump is very limited in range. It can only move up or down 128 bytes in memory. The advantage of this type is that it uses less memory than the others. It uses a single signed byte to store the displacement of the jump. The displacement is how many bytes to move ahead or behind. (The displacement is added to EIP). To specify a short jump, use the SHORT keyword immediately before the label in the JMP instruction.
    - NEAR
    - FAR
  - The loop Instructions
- Translating Standard Control Structures
  - If Statements
  - While loops
  - Do while loops

