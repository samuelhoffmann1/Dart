import 'ttt_functions.dart';
import 'dart:io';

void main() {
  var board = [
    [" ", " ", " "],
    [" ", " ", " "],
    [" ", " ", " "]
  ];
  Map<String, String> next_player = {"X": "O", "O": "X"};
  String cur_player = "X";

  while (true) {
    print_board(board);

    print('Enter player $cur_player move as row,col: ');
    String input = stdin.readLineSync() ?? "";
    var string_move = input.split(",");
    List<int> move = string_move.map(int.parse).toList();

    if (move.length == 2 &&
        move[0] >= 0 &&
        move[0] <= 2 &&
        move[1] >= 0 &&
        move[1] <= 2) {
      if (play(cur_player, move[0], move[1], board)) {
        if (check_win(board)) {
          print_board(board);
          print("Congratulations! Player $cur_player wins.");
          break;
        } else if (!can_play(board)) {
          print_board(board);
          print("No more valid moves. It's a draw.");
          break;
        } else {
          cur_player = next_player[cur_player].toString();
        }
      }
    } else {
      print(
          "Invalid move. Rows and columns must be between 0 and 2 seperated by a comma.");
    }
  }
  print("\nThanks for playing!");
}
