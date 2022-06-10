# n bit Multiplier
A n bit Multiplier in VHDL
This is my first project in VHDL
## Information
**Diagram**: 
I modeled this `4 bit Multiplier` to design `n bit Multiplier`

![Diagram](./Picture/4_bit_Multiplier%20(1).jpg)

I realized that I could make `n bit Multiplier` with n - 1 number of `n bit Full-Adder`
**Example**: 
```text
4 bit Multiplier : use 3 n bit Full-Adder
5 bit Multiplier : use 4 n bit Full-Adder
6 bit Multiplier : use 5 n bit Full-Adder
                 .
                 .
                 .
```