// game_data.dart

// game_data.dart

import 'dart:math';

class GameContent {
  final String? questionText; // For Moderate and Hard categories
  final String correctAnswer;
  final List<String> answers;
  final String soundPath;
  final String subtitle;

  GameContent({
   required this.questionText, // Nullable for Easy category
    required this.correctAnswer,
    required this.answers,
    required this.soundPath,
    required this.subtitle,
  });

  static GameContent getGameContent(int gameId, int currentLevel) {
    switch (gameId) {
      case 1: // Easy Category - Letters and Sound
        return _getEasyContent(currentLevel);

      case 2: // Moderate Category - Word and Sound
        return _getModerateContent(currentLevel);

      case 3: // Hard Category - Rhyming Word
        return _getHardContent(currentLevel);

      default:
        return GameContent(
          questionText: 'Question Not Found',
          correctAnswer: 'No Answer',
          answers: ['Answer Not Found'],
          soundPath: 'Sound Not Found',
          subtitle: 'Subtitle Not Found',
        );
    }
  }

  // Easy category (Letters and Sound)
  static GameContent _getEasyContent(int level) {
    List<Map<String, dynamic>> easyQuestions = [
      {
        "questionText": "What sound of this letter?",
        "soundPath": "audio/aaa.mp3",
        "correctAnswer": "Aa",
        "answers": ["Aa", "Bb", "Cc", "Dd"],
        "subtitle": "Alphabets Sounds",
      },
      {
        "questionText": "What sound of this letter?",
        "soundPath": "audio/bbb.mp3",
        "correctAnswer": "Bb",
        "answers": ["Vv", "Bb", "Dd", "Pp"],
        "subtitle": "Alphabets Sounds",
      },
      {
        "questionText": "What sound of this letter?",
        "soundPath": "audio/ccc.mp3",
        "correctAnswer": "Cc",
        "answers": ["Ss", "Pp", "Cc", "Vv"],
        "subtitle": "Alphabets Sounds",
      },
      {
        "questionText": "What sound of this letter?",
        "soundPath": "audio/ddd.mp3",
        "correctAnswer": "Dd",
        "answers": ["Bb", "Vv", "Pp", "Dd"],
        "subtitle": "Alphabets Sounds",
      },

      {
       "questionText": "What sound of this letter?",
        "soundPath": "audio/eee.mp3",
        "correctAnswer": "Ee",
        "answers": ["Ii", "Pp", "Ee", "Gg"],
        "subtitle": "Alphabets Sounds",
      },
      // Add more questions here
    ];

    if (level - 1 < easyQuestions.length) {
      var question = easyQuestions[level - 1];
      return GameContent(
        questionText: question["questionText"],
        // imagePath: null, // No imagePath for Moderate category
        correctAnswer: question["correctAnswer"],
        answers: question["answers"],
        soundPath: question["soundPath"],
        subtitle: question["subtitle"],
      );
    } else {
      return GameContent(
        questionText: 'Question Not Found',
        // imagePath: null,
        correctAnswer: 'No Answer',
        answers: ['Answer Not Found'],
         soundPath: 'Sound Not Found',
        subtitle: 'Subtitle Not Found',
      );
    }
  }

  // Moderate category (Word and Sound)
  static GameContent _getModerateContent(int level) {
    List<Map<String, dynamic>> moderateQuestions = [
      {
       "questionText": "What sound of this word?",
        "soundPath": "audio/Fail.mp3",
        "correctAnswer": "Fail",
        "answers": ["Fail", "Rate", "Rake", "Ray"],
        "subtitle": "Word of Sound",
      },

      {
        "questionText": "What sound of this word?",
        "soundPath": "audio/Draw.mp3",
        "correctAnswer": "Draw",
        "answers": ["Draw", "Row", "Mow", "Dough"],
         "subtitle": "Word of Sound",
      },

      {
        "questionText": "What sound of this word?",
        "soundPath": "audio/East.mp3",
        "correctAnswer": "East",
        "answers": ["Rest", "East", "Meet", "Rate"],
        "subtitle": "Word of Sound",
      },

       {
        "questionText": "What sound of this word?",
        "soundPath": "audio/Bite.mp3",
        "correctAnswer": "Bite",
        "answers": ["Bay", "Bite", "Byte", "Bye"],
        "subtitle": "Word of Sound",
      },

      {
       "questionText": "What sound of this word?",
        "soundPath": "audio/Clay.mp3",
        "correctAnswer": "Clay",
        "answers": ["Mite", "Fly", "Byte", "Clay"],
        "subtitle": "Word of Sound",
      },
      // Add more questions here
    ];

    if (level - 1 < moderateQuestions.length) {
      var question = moderateQuestions[level - 1];
      return GameContent(
        questionText: question["questionText"],
        // imagePath: null, // No imagePath for Moderate category
        correctAnswer: question["correctAnswer"],
        answers: question["answers"],
        soundPath: question["soundPath"],
        subtitle: question["subtitle"],
      );
    } else {
      return GameContent(
        questionText: 'Question Not Found',
        // imagePath: null,
        correctAnswer: 'No Answer',
        answers: ['Answer Not Found'],
         soundPath: 'Sound Not Found',
        subtitle: 'Subtitle Not Found',
      );
    }
  }

  // Hard category (Rhyming Word)
  static GameContent _getHardContent(int level) {
    List<Map<String, dynamic>> hardQuestions = [
      {
        "questionText": "Ana play a ____.",
        "soundPath": "audio/ball.mp3",
        "correctAnswer": "Ball",
        "answers": ["Ball", "Bite", "Byte", "Bay"],
        "subtitle": "Find a missing word",
      },

      {
        "questionText": "Seth drive a ___.",
        "soundPath": "audio/Car.mp3",
        "correctAnswer": "Car",
        "answers": ["Can", "Car", "Cane", "Cake"],
        "subtitle": "Find a missing word",
      },

      {
        "questionText": "Maria allegery the ___.",
        "soundPath": "audio/Cat.mp3",
        "correctAnswer": "Cat",
        "answers": ["Cat", "Cry", "Cyte", "Can"],
        "subtitle": "Find a missing word",
      },
      
      {
        "questionText": "Jake ____ to play.",
        "soundPath": "audio/Free.mp3",
        "correctAnswer": "Free",
        "answers": ["Fan", "Fit", "Free", "Fire"],
        "subtitle": "Find a missing word",
      },

      {
        "questionText": "Shella play a _____.",
        "soundPath": "audio/Shell.mp3",
        "correctAnswer": "Shell",
        "answers": ["Shell", "Shine", "Shot", "Shy"],
        "subtitle": "Find a missing word",
      },
      // Add more questions here
    ];

    if (level - 1 < hardQuestions.length) {
      var question = hardQuestions[level - 1];
      return GameContent(
        questionText: question["questionText"],
        // imagePath: null, // No imagePath for Hard category
        correctAnswer: question["correctAnswer"],
        answers: question["answers"],
        soundPath: question["soundPath"],
        subtitle: question["subtitle"],
      );
    } else {
      return GameContent(
        questionText: 'Question Not Found',
        // imagePath: null,
        correctAnswer: 'No Answer',
        answers: ['Answer Not Found'],
        soundPath: 'Sound Not Found',
        subtitle: 'Subtitle Not Found',
      );
    }
  }
}

  // Randomize answers for Hard category
  List<String> getRandomAnswers(List<String> allAnswers, int numChoices) {
    var rng = Random();
    List<String> selectedAnswers = [];
    Set<String> usedAnswers = {};

    while (selectedAnswers.length < numChoices) {
      var answer = allAnswers[rng.nextInt(allAnswers.length)];
      if (!usedAnswers.contains(answer)) {
        selectedAnswers.add(answer);
        usedAnswers.add(answer);
      }
    }

    return selectedAnswers;
  }


