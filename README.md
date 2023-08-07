# 64bitveidicmultiplier using Verilog
64 bit Vedic calculator without floating point.

INTRODUCTION
Through this project we attempted in presenting the highly efficient 64 bit multiplier for the mantissa calculation using rule or sutra of Vedic mathematics called Urdhva Tiryakbhyam Sutra which deals with vertically and crosswise multiplication. Using this sutra in the computation algorithm of DSP processors, can enhance the efficiency and at the same time can reduce the complexity, area, power consumption and delay. As multiplication requires large amount of execution time of most of the DSP application, therefore there is always a need to have high speed and low delay multipliers. An optimized time delay is the important requirement for number of application as well. Here, we attempted designing multiplier starting from the design of 2-bit Vedic multiplier upto designing 64-bit Vedic multiplier.

The Design of this Multiplier is coded using Verilog HDL on Xilinx vivado platform.

WORKING
Urdhva Tiryakbhyam:
Urdhva Tiryakbhyam Sutra’ in Vedic Mathematics is generally used for multiplication. The Vedic words Urdhva means vertical and Tiryakbhyam means crosswise. Therefore, by vertical and crosswise direction two binary numbers can be multiplied. Generation of all partial products can be obtained with the concurrent addition, by using Urdhva Tiryakbhyam sutra NxN multiplier architectures can be generated. 

2x2 Vedic Multiplier
The 2x2 vedic multiplier is used as our initial multipler based on which multipliers of higher order are build; for eg: 4x4,8x8,16x16 till 64x64.

![image](https://github.com/Sahil9425/64bitveidicmultiplier/assets/132200377/10ac4113-d010-46ac-bd33-5452cce53de4)






RTL Schematic


![image](https://github.com/Sahil9425/64bitveidicmultiplier/assets/132200377/f7bbf532-0341-4fad-8408-15dc39dca31d)

