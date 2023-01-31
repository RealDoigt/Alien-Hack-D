# Alien-Hack
Welcome to the Alien-Hack, a work in progress puzzle game for the SteamDeck (although we're currently testing it on Manjaro).
We are working on this game as a way to explore native Linux/SteamDeck game development. 
It is a stepping stone to a future filled with much greater projects.
This project was originally started in C, you can find the original project files [here](https://github.com/RealDoigt/Alien-Hack-C).

### How does it play?
For now, not much is actually going on in the game since there is still a lot left unimplemented, but we're steadily making our way there. 
In the meantime here's the planned gameplay for our game:

A level has a variable number of byte lines. The last byte line is the only one which matter, because its bits have to match the solution's bits. 
To make it match, you'll have to use a set of actions to modify a byte line:

* Actions which merge two lines
  * And: this merges two lines together but it goes through every bit in each byte and it compares them to see if two bits at the same position in their respective bytes hold 
  a value of 1 and if they do, the bit from the bottom byte line will be carried into the merger with a value of 1, otherwise it will be 
  carried into the merger with a value of 0. In effect, this deletes the line being merged into the below line.
  * Or: this merges two lines together by going through every bit and it compares them to see if either one is equal to 1. The one equal to 1 is carried into the
  merger with its value. If neither are positive, the bit from the line below is carried into the merger with a value of 0.
  * Xor: this is exactly like the one above, but it adds the extra condition that two bits at the same position in their respective bytes 
  cannot be equal to 1 at the same time; if that is the case, the bit from the line below is carried into the merger with a value of 0 even 
  if it used to be 1.
* Actions which affect only one line
  * Right shift and left shift: moves every bit in the byte line by 1 cell in the direction chosen. A zero is added at the point of origin of the direction.
  A value that goes out of the line's bounds is destroyed by the game; a realy byte is only 8 bits after all.
  * Not: goes through every single bit in a byte line and sets it to the value opposite of what it was; 0 if 1 and 1 if 0.

Actions are not free; you are limited to a certain number of actions per type. For example, to solve one level, you could be limited to 4 shifts and 1 xor, so you'd
have to use your imagination to solve the puzzle with the allocated resources! However, be careful to not run afoul of the time limit!

#### The twist
You may be wondering what I meant in the earlier section when I said that a bit is being "carried over", well wonder no more. The game doesn't present you with a computer like the ones humans build, but lets you hack a computer of alien origin where bits are living organisms which sometimes
have special abilities. Here's a list of all the bits in the game:

* Normal: this bit has no special ability and represents most of the bits that can be encountered in the game. Shift actions will generate normal bits.
* Explosive: if it's sandwiched between two bits equal to 1 on the vertical axis, those bits and itself become 0 unless the explosive bit is already 0.
* Virus: all adjacent bits become 1 when there's a change in the byte line unless the virus bit is 0.
* Wise: no matter what, it will match the same value as the bit which holds the same position in the solution.
* Zombie: Except under some circumstances, it's value is inverted whenever there's a byte line change.
