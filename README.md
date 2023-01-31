231 Assignment 1
Benjamin Dempsey
Jan 27 2023

Note to marker:
All assembly code was written to a1.s, all written work is saved in this README.

I am not sure what README.md.swp is :D please ignore it.


Question 1-4:
Please see code in a1.s. Code is heavily commented for each problem and labeled for each question (p1part1 = problem 1 part 1, etc) 

EXPLANATION OF PART2:
Doing the XOR operation twice gives you back your original values*. Additionally, the operation is commutative (A XOR B = B XOR A). I will explain in pseudocode.

r0 = r0 XOR r1
followed by
r1 = r0 XOR r1
 
 This second line is really the same as r1 = (r0 XOR r1) XOR r1 since r0 = (r0 XOR r1) which is just r0
 Finally r0 = r0 XOR r1 which is (r0 XOR r0) XOR r1 which is the same as r0.
 So we are left with r1=original(r0) and r0 = original(r1).


*ex.
 101 XOR 101 = 000
 000 XOR 101 = 101

Question 5:

Part 1:
The EDVAC was proposed to have five subdivisions. One for each of the following purposes. Firstly, there would be a subsection for doing elementary operations. The thought behind this was that these would be done most frequently and therefor should have a designated organ. The second subdivision would be for logical operations. If the computer has a subdivision for logical operations, then it is relatively all purpose, and logical operations are very frequently used. The third subdivision is for memory. Comparing the EDVAC to a modern computer, this encapsulates RAM, cache, hard drives, etc. The need for this is evident as a computer without the ability to store data has incredibly limited use. Without some form of memory even relatively simple math such as integration or derivation would be impossible as they need intermediate steps to be remembered to carry out the calculation. The fourth subdivision is for input, which the document describes as an organ to transfer information from outside the device into its internal location. The fifth and final subdivision is for output. The motive behind these two organs come from the analogy of a human. Prior to these two organs, we had the associative neurons of the human nervous system but lacked the sensory and motor neurons. The input and output allow the device to interact with the world.

Part 2:
Elements in the EDVAC are distinct units with discrete equilibria (Neumann, 1945). Elements should be able to hold two or more distinct states and are analogous to the neurons of higher animals in their on-or-off (all-or-none) capability. These elements described by Von Neumann are essentially modern-day transistors which are on/off gates or switches that have fully independent states.

Part 3:
Von Neumann suggests use of a binary system for arithmetical operation due to the element's all-or-none quality. A machine that operates with only two states logically would perform operations in base two. Additionally, Von Neumann argues that multiplication and division are considerably simpler with base two as it has a "more one-piece logical structure than any other [system] (Neumann, 1945)." Practically it is much easier to write algorithms for multiplication and division for base two operations than it is for base three, or four, or ten.

Work Cited:

Neumann, J. von. (1945). (tech.). First Draft of a Report on the EDVAC. 
 


