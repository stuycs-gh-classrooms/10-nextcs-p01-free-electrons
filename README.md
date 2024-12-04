[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/2bl0h1Mb)
# NeXtCS Project 01
### Name0: Daviana Ramnauth
### Name1: Princeton
---

### Overview
Your mission is create either:
- Life-like cellular automata [life](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life), [life-like](https://en.wikipedia.org/wiki/Life-like_cellular_automaton), [demo](https://www.netlogoweb.org/launch#https://www.netlogoweb.org/assets/modelslib/Sample%20Models/Computer%20Science/Cellular%20Automata/Life.nlogo).
- Breakout/Arkanoid [demo 0](https://elgoog.im/breakout/)  [demo 1](https://www.crazygames.com/game/atari-breakout)
- Space Invaders/Galaga

This project will be completed in phases. The first phase will be to work on this document. Use markdown formatting. For more markdown help [click here](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) or [here](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)


---

## Phase 0: Selection, Analysis & Plan

#### Selected Project: Space Invaders

### Necessary Features
What are the core features that your program should have? These should be things that __must__ be implemented in order to make the program useable/playable, not extra features that could be added to make the program more interesting/fun.

Aesthetically, we need: invaders, a space ship, and safe domes. This means that we need at least five classes to have overall enteties (individual invaders, invader hoard, player space ship, individual laser, and individual safe domes). Within the II class, we need to define two states (dead/alive) and then their physical shape. Within the IH class, we need to create a 2D array of IIs, and implement something similar to the method we used in ball grid to cause the grid to move. Within the PSS class, we need to create a method that moves the ship horizontally, defines two states (dead/alive), and fires lasers vertically and perpendicularly to the ship's position. Within the L class, we need to create an object that moves vertically at a given speed, and is populated relative to the starting position of a ship and "dies" only when it hits a II, SD, or PSS. Within the SD class, we need to create miniobjects within objects, so a mini-2D array, that then is filled with mini-objects that "die" if hit by a laser. The laser itself can be used by the SHH, but can also be randomly populated from a point within the IH grid. Outside of all of that, we need a way to keep a score and life count. A score is how many IIs have died, and a life count is how many times the PSS has died. 

### Extra Features
What are some features that are not essential to the program, but you would like to see (provided you have time after completing the necessary features. These can be customizations that are not part of the core requirements.

We could create different levels, so at a "higher" level the IH "moves" faster, and the PSS may be able to move vertically as well. The most basic extra feature, though, would be to have a larger mothership at the top (a whole different class would need to be created).

### Array Usage
How will you be using arrays in this project?

1D Array:
- None I can think of so far

2D Array:
- We will use them to create the invader hoard and individual safe domes


### Controls
How will your program be controlled? List all keyboard commands and mouse interactions.

Keyboard Commands:
- r-> restart game
- ' ' -> shoot laser
- left -> move PSS left
- right -> move PSS right
  

Mouse Control:
- Mouse movement: if PSS is selected, move left and right following the x-cor/speed of the mouse
- Mouse pressed: if held, PSS is selected


### Classes
What classes will you be creating for this project? Include the instance variables and methods that you believe you will need. You will be required to create at least 2 different classes. If you are going to use classes similar to those we've made for previous assignments, you will have to add new features to them.

invader
- Instance variables:
  - int size, PVector position, color invadeCol
- METHODS
  - void makeInvader(), void drawInvader()

InvaderHoard
- Instance variables:
  - invader invaders[][], int numrows, int numcols 
- METHODS
  - void fillInvaders(), void moveInvaders(), void showInvaders(), boolean processDeath(), void checkEdges(), void changeMovement()

Player
- Instance variables:
  - int size, color PlayerColor, int Xposition 
- METHODS
  - void makePlayer(), void drawPlayer(), void movePlayer()

Laser
- Instance variables:
  - PVector Start, int size, color LaserColor
- METHODS
  - void makeLaser(), void showLaser(), void PewPew(), void ConfirmedHit() 

SafeDome
- Instance variables:
  - DomeBlocks fullDome[][], int width, int length
- METHODS
  - void fillDome(), void createDome(), void showDome()

DomeBlocks
- Instance variables:
  - PVector pos, int width, int lenghth, color DomeCol
- METHODS
  - void makeBlock(), void showBlock(), void ByeBlock()

