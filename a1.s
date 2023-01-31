.syntax unified
.section .vectors

.global _start
.section .text

@Benjamin Dempsey
@230150566
@Jan 20, 2023

_start:

problem1:
p1part1:

@part 1
MOV r0, #0x01 @Move '1' into r0
MOV r1, #0x02 @Move '2' into r1

MOV r2, r0 @Move value of r0 to r2 temporarily
MOV r0, r1 @Move value of r1 to r0
MOV r1, r2 @Move value of r2 (original r0) to r1


@Reseting used registers to zero
MOV r0, #0x0
MOV r1, #0x0
MOV r2, #0x0

@part 2
p1part2:

MOV r0, #0x1 @setting r0, r1 to be different values
MOV r1, #0x2

EOR r0, r0, r1 @set r0 to be r0 xor r1
EOR r1, r1, r0 @simplifying, this sets r1 to be the original r0
EOR r0, r0, r1 @simplifying, this sets r0 to be the orginal r1

@more description in readME

@r1 should now be 1 and r0 should be 2

MOV r0,#0x0
MOV r1,#0x0
@reset registers to zero

problem2:
CMP r1, 1 @should be less than to make sure flag isnt greater than
loopStart:

ADD r1, #0x1 @this will be added to r0
ADD r0, r1 @first loop, adds 1 to r0, second loop adds 2, ..., adds 200

CMP r1, #0xc7 @compare ctr (r1) to 199

BGT loopEnd

b loopStart @if not greater than 199 it will jump back to the start (it will add the 200)
loopEnd:


problem3:
MOV r0, #0x0 @r0=x=empty
MOV r1, #0xc @r1=y=12
MOV r2, #0x14 @r2=z=20
MOV r3, #0xf @r3=n=15
MOV r4, #0x6 @r4=m=6
MOV r5, #0x2 @r5=t=2

p3part1:
@1. x=y+z-n

@y+z
ADD r0, r1, r2 @add r1 and r2 and store it in r0 (32)

@(y+z)-n
SUB r0, r0, r3 @subtract n from y+z (17)

p3part2:
@2. x=(z-(t*m))*y

MOV r0, #0x0

MUL r0, r5, r4 @mulitply r5 and r4 and store it in r0 (12)
SUB r0, r2, r0 @subtract r2 from t*m (8)
MUL r7, r0, r1 @multiple r0, r1 and store in r7 temporarily, (96)
MOV r0, r7 @copy value to r0 (96)

p3part3:
MOV r7, #0x0 @reset
MOV r0, #0x0 @reset

@3. x = floor(n/t) * t
@to divide by t=2 we bitshift right
LSR r7, r3, #0x1 @shift r3(n) right by 1 bit (divides by 2 and floors it) (7)
MUL r0, r7, r5 @Multiplies r7(7) by r5(2) and stores it in r0(x) (14)

problem4:
MOV r0, 0x0
MOV r1, 0x0
MOV r2, 0x0
MOV r3, 0x0
MOV r4, 0x0
MOV r5, 0x0
MOV r6, 0x0
MOV r7, 0x0
@To verify that !(P or Q) = !P and !Q I will calculate both sides and show they are equal

@!(P or Q)
MOV r0, 0xAA @p=10101010
MOV r1, 0x77 @q=01110111

@(P or Q)
ORR r2, r0, r1 @save result of & operations to r2
@!(P or Q)or
MVN r3, r2 @r3 now stores !(P or Q)

MVN r0, r0
MVN r1, r1
@Negated P and negated Q

AND r4, r0, r1 @result of (!P and !Q) stored in r4

CMP r4, r3 @If !(P or Q) <=> !P and !Q then it should follow equal branch

BEQ proven1 

b p4part2

proven1:
MOV r6, 0x1 @If r6 is set to 1 then we know they are equal

p4part2:

MOV r0, 0xAA
MOV r1, 0x77

AND r2, r0, r1

MVN r2, r2 @result should be !(P and Q)

MVN r0, r0
MVN r1, r1

ORR r3, r0, r1 @result is !P or !Q

CMP r2, r3

BEQ proven2
b end
proven2:
MOV r6, 0x2 @if proven then set r6 to 2

end:
b .
