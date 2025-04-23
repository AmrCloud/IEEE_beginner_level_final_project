import 'dart:io';
import 'dart:math';
import 'hangman_art.dart';
import 'hangman_words.dart';

void clearScreen() {
  if (Platform.isWindows) {
    stdout.write('\x1B[2J\x1B[0;0H'); 
  } else {
    stdout.write('\x1B[2J\x1B[H');    
  }
}

void main() {
  print("******************** Welcome to Hangman Game by Amr Musad ********************");

  final Random randomItem = Random();
  List<String> stages = HangmanArt().Hangman;
  int playerLives = 6;
  final HangmanRandomWords wordsList = HangmanRandomWords();
  String randomWord = "";

  print("Choose a Difficulty: easy, medium, hard.");
  String difficulty = stdin.readLineSync()!.toLowerCase();

  print("Choose a Category: animal, programming, random.");
  String category = stdin.readLineSync()!.toLowerCase();

  if (category == "animal") {
    switch (difficulty) {
      case "easy":
        randomWord = wordsList.easyAnimals[randomItem.nextInt(wordsList.easyAnimals.length)];
        break;
      case "medium":
        randomWord = wordsList.mediumAnimals[randomItem.nextInt(wordsList.mediumAnimals.length)];
        break;
      case "hard":
        randomWord = wordsList.hardAnimals[randomItem.nextInt(wordsList.hardAnimals.length)];
        break;
      default:
        print("Invalid difficulty, defaulting to 'easy'.");
        randomWord = wordsList.easyAnimals[randomItem.nextInt(wordsList.easyAnimals.length)];
    }
  } else if (category == "programming") {
    switch (difficulty) {
      case "easy":
        randomWord = wordsList.easyProgramming[randomItem.nextInt(wordsList.easyProgramming.length)];
        break;
      case "medium":
        randomWord = wordsList.mediumProgramming[randomItem.nextInt(wordsList.mediumProgramming.length)];
        break;
      case "hard":
        randomWord = wordsList.hardProgramming[randomItem.nextInt(wordsList.hardProgramming.length)];
        break;
      default:
        print("Invalid difficulty, defaulting to 'easy'.");
        randomWord = wordsList.easyProgramming[randomItem.nextInt(wordsList.easyProgramming.length)];
    }
  } else if (category == "random") {
    switch (difficulty) {
      case "easy":
        randomWord = wordsList.easyRandomWords[randomItem.nextInt(wordsList.easyRandomWords.length)];
        break;
      case "medium":
        randomWord = wordsList.mediumRandomWords[randomItem.nextInt(wordsList.mediumRandomWords.length)];
        break;
      case "hard":
        randomWord = wordsList.hardRandomWords[randomItem.nextInt(wordsList.hardRandomWords.length)];
        break;
      default:
        print("Invalid difficulty, defaulting to 'easy'.");
        randomWord = wordsList.easyRandomWords[randomItem.nextInt(wordsList.easyRandomWords.length)];
    }
  } else {
    print("Invalid category, defaulting to 'random' and 'easy'.");
    randomWord = wordsList.easyRandomWords[randomItem.nextInt(wordsList.easyRandomWords.length)];
  }

  List<String> correctGuess = [];
  String hintDisplay = "-" * randomWord.length;
  bool gameSwitch = false;

  clearScreen();
  print(stages[6 - playerLives]);
  print("\nWord: $hintDisplay");

  while (!gameSwitch) {
    print("\nGuess a letter: ");
    String guessedChar = stdin.readLineSync()!.toLowerCase();

    if (guessedChar.length != 1 || !RegExp(r'^[a-z]$').hasMatch(guessedChar)) {
      print("Invalid input — enter a single letter.");
      continue;
    }

    String updatedDisplay = "";
    for (String letter in randomWord.split('')) {
      if (guessedChar == letter) {
        correctGuess.add(letter);
      }
      updatedDisplay += correctGuess.contains(letter) ? letter : "-";
    }

    clearScreen();
    print(stages[6 - playerLives]);
    print("\nWord: $updatedDisplay");

    if (updatedDisplay == randomWord) {
      print("\n🎉 Congratulations! You guessed the word: '$randomWord'!");
      gameSwitch = true;
      break;
    }

    if (!randomWord.contains(guessedChar)) {
      playerLives--;

      clearScreen();

      if (playerLives >= 0) {
        print(stages[6 - playerLives]);
        print("\nWord: $updatedDisplay");
        print("Wrong guess! Lives left: $playerLives");
      }

      if (playerLives == 0) {
        print("\n💀 Game Over! The correct word was '$randomWord'.");
        gameSwitch = true;
      }
    }
  }
}
