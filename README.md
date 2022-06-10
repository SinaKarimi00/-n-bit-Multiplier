# n bit Multiplier
This is my first project in VHDL
## Information
**Diagram**: 
I design this `4 bit Multiplier` with `4 bit Full-Adder`

![Diagram](./Picture/4_bit_Multiplier%20.jpg)

After that I realized that I could make `n bit Multiplier` with n - 1 number of `n bit Full-Adder`.

### Example: 
```text
4 bit Multiplier : use 3  bit Full-Adder
5 bit Multiplier : use 4  bit Full-Adder
6 bit Multiplier : use 5  bit Full-Adder
                 .
                 .
                 .
```
## Compiler
You can compile it with: 
- Modelsim
- Qustasim