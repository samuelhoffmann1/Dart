void print_board(List<List<String>> board) {
    for (var i = 0; i < 3; i++) {
    print(board[i].join(" | "));
    if (i == 2) {
      break;
    };
    print("---------");
  }
}

bool play(String symbol, int row, int col, List<List<String>> board) {
  if (board[row][col] == " ") {
    board[row][col] = symbol;
    return true;
  } else {
    return false;
  }
}

bool can_play(List<List<String>> board) {
  for (var row in board) {
    if (row.contains(" ")) {
      return true;
    }
  }
  return false;
}

bool check_win(List<List<String>> board) {
  for (var row in board) {
    if (row[0] == row[1] && row[1] == row[2] && row[0] != " ") {
      return true;
    }
  }

  // Check columns
  for (var i = 0; i < 3; i++) {
    if (board[0][i] == board[1][i] && board[1][i] == board[2][i] && board[0][i] != " ") {
      return true;
    }
  }

  // Check diagonals
  if (board[0][0] == board[1][1] && board[1][1] == board[2][2] && board[0][0] != " ") {
    return true;
  }
  if (board[0][2] == board[1][1] && board[1][1] == board[2][0] && board[0][2] != " ") {
    return true;
  }

  return false;
}