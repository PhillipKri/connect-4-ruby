# connect-4-ruby
# Connect 4 in Ruby

## Overview

This is a terminal-based implementation of the classic **Connect 4** game written in Ruby. Two players take turns dropping their tokens (`X` and `O`) into a grid. The first player to align four tokens in a row (horizontally, vertically, or diagonally) wins. If the board is full without a winner, the game ends in a draw.

---

## Features

- A 6x7 board grid displayed in the terminal.
- Alternating turns between two players.
- Real-time validation of moves to ensure fair gameplay.
- Detection of winning conditions for horizontal, vertical, and diagonal patterns.
- Handles invalid inputs and prompts players to re-enter valid moves.

---

## How to Play

1. Clone the repository or copy the code into a file named `connect4.rb`.
2. Ensure Ruby is installed on your machine (version 2.5 or later).
3. Run the game with the following command:
   ```bash
   ruby connect4.rb
   ```
4. Follow the on-screen prompts:
   - Players take turns to choose a column by entering a number between `1` and `7`.
   - The game checks for a win or a draw after every move.

---

## Example Gameplay

```plaintext
Welcome to Connect 4!
. . . . . . .
. . . . . . .
. . . . . . .
. . . . . . .
. . . . . . .
. . . . . . .
1 2 3 4 5 6 7

Player X, choose a column (1-7):
```

---

## Winning Condition

To win, align **4 of your tokens** in any of the following ways:
- **Horizontal**: Four tokens in a single row.
- **Vertical**: Four tokens in a single column.
- **Diagonal**: Four tokens along a diagonal line.

If the grid fills up before either player wins, the game ends in a **draw**.

---

## Code Structure

- **`Connect4` Class**:
  - Manages the game board, player turns, and game logic.
  - Core methods include:
    - `play`: Starts and manages the main game loop.
    - `player_move`: Handles player input and token placement.
    - `display_board`: Displays the current state of the game board.
    - `winning_combination?`: Checks for a winning pattern.

---

## Future Enhancements

- Add support for AI to play against a computer opponent.
- Enhance the UI with color-coded tokens (`X` and `O`).
- Provide a menu system to restart or exit the game.

---

## License

This project is released under the MIT License. Feel free to modify and distribute as needed.

---

## Contributions

Contributions are welcome! If you have ideas to improve the game, feel free to fork the repository and create a pull request.

---

Enjoy the game! 🎉
