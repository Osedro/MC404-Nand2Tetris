// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
(init)
@KBD
D = M
@branco
D;JEQ

@i
M = 0
@8192
D = A
@tam
M = D
(loopp)
@i
D = M
@tam
D = D - M
@init
D; JEQ
@SCREEN
D = A
@i
D = D + M
A = D
M = -1
@i
M = M + 1
@loopp
0; JMP
(branco)
@i
M = 0
@8192
D = A
@tam
M = D
(loopb)
@i
D = M
@tam
D = D - M
@init
D; JEQ
@SCREEN
D = A
@i
A = D + M
M = 0
@i
M = M + 1
@loopb
0; JMP








