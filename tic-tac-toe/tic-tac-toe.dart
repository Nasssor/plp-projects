import 'dart:core';
import 'dart:io';

bool winner = false;
bool isXturn = true;
int moveCount = 0;
List<String> values = ['1', '2', '3', '4', '5', '6', '7', '8', '9'];
List<String> combinations =['012', '048', '036', '147', '246', '258', '345','678'];

bool checkCombination(String combination, String checkFor){
  List<int> numbers = combination.split('').map((item){
    return int.parse(item);}).toList();
    bool match = false;
    for (final item in numbers){
      if (values[item] == checkFor){
        match = true;
      }else{
        match = false;
        break;
      }
    }
    return match;
}
void checkWinner(player){
  for (final item in combinations){
    bool combinationValidity = checkCombination(item, player);
    if (combinationValidity == true){
      print('$player WON!!');
      winner = true;
      break;
    }
  }
}

void getNextCharacter(){
  print('Choose Number for ${isXturn == true ? "X" : "0"}');
  int number = int.parse(stdin.readLineSync()!);
  values[number - 1] = isXturn ? 'X' : '0';
  isXturn = !isXturn;
  moveCount++;
  if (moveCount == 9){
    winner = true;
    print('DRAW!!');
  }else{
    clearScreen();
    generateBoard();
  }

  checkWinner('X');
  checkWinner('0');
  if (winner == false) getNextCharacter();
}
void clearScreen()
{
  if (Platform.isWindows){
    print(Process.runSync("cls", [], runInShell: true).stdout);
  }else {
    print(Process.runSync("clear", [], runInShell: true).stdout);
  }
}
void generateBoard(){
  print('   |   |   ');
  print(' ${values[0]} | ${values[1]} | ${values[2]} ');
  print('___|___|___');
  print('   |   |   ');
  print(' ${values[3]} | ${values[4]} | ${values[5]} ');
  print('___|___|___');
  print('   |   |   ');
  print(' ${values[6]} | ${values[7]} | ${values[8]} ');
  print('   |   |   ');
}
void main()
{
  generateBoard();
  getNextCharacter();
}