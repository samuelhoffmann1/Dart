# CPTR 141: Objective #8 (4 points)

## Problem Overview

Your task in this homework assignment is to create multiple functions that implement a [tic-tac-toe](https://en.wikipedia.org/wiki/Tic-tac-toe) game.


## Solution Specifications

Your solution to this problem must meet the following criteria.

1. A function named `print_board` in `ttt_functions.py` which takes as a single parameter a three by three 2D list representing the game board and prints it out as shown below.

    ```html
     X | O | X
    ---+---+---
       | X |   
    ---+---+---
     O | X | O 
    ```

1. You must define a function named `play` in the file `ttt_functions.py` which takes four parameters as shown below. If the game board is empty at the given row and column, the function places the player symbol on the board and returns `True`. Otherwise it returns `False` without modifying the board.

    i. the player symbol ('X' or 'O')
    
    ii. the row number (0 through 2)
    
    iii. the column number (0 through 2)
    
    iv. the gameboard represented by a 2D list with three rows and three columns.

1. A function named `can_play` which returns `True` if there are open slots on the game board and `False` if the board is full.

1. You must define a function name `check_win` in the file `ttt_functions.py` that takes the game board as a single parameter and returns the winning character (character with three in a row vertically, horizontally, or diagonally) or `False` if there is no winner.

1. The main program can be found in the file `tic_tac_toe.py` and can be used to test your functions.


     Example:
     ```html
        |   |   
     ---+---+---
        |   |   
     ---+---+---
        |   |   
     Enter player X move as row,col: 1,1
        |   |   
     ---+---+---
        | X |   
     ---+---+---
        |   |   
     Enter player O move as row,col: 0,1
        | O |   
     ---+---+---
        | X |   
     ---+---+---
        |   |   
     Enter player X move as row,col: 1,0
        | O |   
     ---+---+---
      X | X |   
     ---+---+---
        |   |   
     Enter player O move as row,col: 0,0
      O | O |   
     ---+---+---
      X | X |   
     ---+---+---
        |   |   
     Enter player X move as row,col: 1,2
      O | O |   
     ---+---+---
      X | X | X 
     ---+---+---
        |   |   
     Congratulations! Player X wins.

     Thanks for playing!

     ```

## Grade Specification

You will earn **four points** for completion of this homework problem once your solution passes all Submitty tests (indicated by all green bars).
