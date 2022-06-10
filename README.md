# n bit Multiplier
This is my first project in VHDL
## Information
I design `4 bit Multiplier` with `4 bit Full-Adder` <br>
**Diagram**: 


![Diagram](./Picture/4_bit_Multiplier%20.jpg)

After that I realized that I could make `n bit Multiplier` with n - 1 numbers of `n bit Full-Adder`.

### Example: 
```text
4 bit Multiplier : use 3  numbers of 4 bit Full-Adder
5 bit Multiplier : use 4  numbers of 5 bit Full-Adder
6 bit Multiplier : use 5  numbers of 6 bit Full-Adder
                 .
                 .
                 .
```
## Compiler
You can compile it with: 
- <a  href="https://www.intel.com/content/www/us/en/software/programmable/quartus-prime/model-sim.html" target="_blank"> Modelsim </a>
- <a  href="https://www.intel.com/content/www/us/en/software/programmable/quartus-prime/questa-edition.html" target="_blank"> Qustasim </a>
