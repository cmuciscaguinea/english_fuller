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

  //Level 1 (Vowel Sound (Aa))
  static GameContent _getEasyContent(int level) {
    List<Map<String, dynamic>> easyQuestions = [
      {
        "questionText": "Which word has /Aa/ sound?",
        "soundPath": "audio/Bad.mp3",
        "correctAnswer": "Bad",
        "answers": ["Bad", "Bell", "Bee", "Boy"],
        "subtitle": "Vowel Sound (Aa)",
      },

       {
        "questionText": "Which word has /Aa/ sound?",
        "soundPath": "audio/Dad.mp3",
        "correctAnswer": "Dad",
        "answers": ["Dune", "Do", "Dad", "Dog"],
        "subtitle": "Vowel Sound (Aa)",
      },


      {
        "questionText": "Which word has /Aa/ sound?",
        "soundPath": "audio/Fat.mp3",
        "correctAnswer": "Fat",
        "answers": ["Feel", "First", "For", "Fat"],
        "subtitle": "Vowel Sound (Aa)",
      },

      {
        "questionText": "Which word has /Aa/ sound?",
        "soundPath": "audio/Bag.mp3",
        "correctAnswer": "Bag",
        "answers": ["Bike", "Bee", "Bag", "Bell"],
        "subtitle": "Vowel Sound (Aa)",
      },

      {
        "questionText": "Which word has /Aa/ sound?",
        "soundPath": "audio/Map.mp3",
        "correctAnswer": "Map",
        "answers": ["Mike", "Me", "Map", "Miss"],
        "subtitle": "Vowel Sound (Aa)",
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

  // Level 2 (Rhyming Words /ar/)
  // Level 2 (WORDS WITH ow SOUNDS AS /aw/)
  static GameContent _getModerateContent(int level) {
    List<Map<String, dynamic>> moderateQuestions = [

       {
       "questionText": "Which word has the /aw/ sound?",
        "soundPath": "audio/cow.mp3",
        "correctAnswer": "Cow",
        "answers": ["Cow", "Bag", "Map", "Pen"],
        "subtitle": "Word with 'ow' sound /aw/",
      },

      {
       "questionText": "Which word has the /aw/ sound?",
        "soundPath": "audio/town.mp3",
        "correctAnswer": "Town",
        "answers": ["Ten", "Town", "Cat", "Mat"],
        "subtitle": "Word with 'ow' sound /aw/",
      },

      {
       "questionText": "Which word has the /aw/ sound?",
        "soundPath": "audio/power.mp3",
        "correctAnswer": "Power",
        "answers": ["Pan", "Hat", "Power", "Man"],
        "subtitle": "Word with 'ow' sound /aw/",
      },

      {
       "questionText": "Which word has the /aw/ sound?",
        "soundPath": "audio/clown down the tower.mp3",
        "correctAnswer": "Clown down the tower",
        "answers": ["Dog", "Hit", "Hat", "Clown down the tower"],
        "subtitle": "Words with 'ow' sound /aw/",
      },

      {
       "questionText": "Which word has the /aw/ sound?",
        "soundPath": "audio/owns the brown gown.mp3",
        "correctAnswer": "Owns the brown gown",
        "answers": ["Mine", "Casual", "Owns the brown gown", "Sand"],
        "subtitle": "Words with 'ow' sound /aw/",
      },



      // {
      //  "questionText": "What word rhymes with the sound?",
      //   "soundPath": "audio/Car.mp3",
      //   "correctAnswer": "Bar",
      //   "answers": ["Bar", "Cat", "Can", "Cast"],
      //   "subtitle": "Rhyming Words /ar/",
      // },

      // {
      //  "questionText": "What word rhymes with the sound?",
      //   "soundPath": "audio/Bar.mp3",
      //   "correctAnswer": "Car",
      //   "answers": ["Bike", "Bus", "Bee", "Car"],
      //   "subtitle": "Rhyming Words /ar/",
      // },

      // {
      //  "questionText": "What word rhymes with the sound?",
      //   "soundPath": "audio/Far.mp3",
      //   "correctAnswer": "Bar",
      //   "answers": ["Fast", "Fat", "Bar", "File"],
      //   "subtitle": "Rhyming Words /ar/",
      // },

      // {
      //  "questionText": "What word rhymes with the sound?",
      //   "soundPath": "audio/Jar.mp3",
      //   "correctAnswer": "Tar",
      //   "answers": ["Juice", "Joy", "Jet", "Tar"],
      //   "subtitle": "Rhyming Words /ar/",
      // },

      // {
      //  "questionText": "What word rhymes with the sound?",
      //   "soundPath": "audio/Star.mp3",
      //   "correctAnswer": "Scar",
      //   "answers": ["Salt", "Scar", "Style", "Sand"],
      //   "subtitle": "Rhyming Words /ar/",
      // },

     
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
        "questionText": "Which word has a consonant blend?",
        "soundPath": "audio/Blade.mp3",
        "correctAnswer": "Blade",
        "answers": ["Blade", "Bus", 
        "Ben Ten", "Boy Sing"],
        "subtitle": "Consonant Blend /bl/",
      },

      {
        "questionText": "Which word has a consonant blend?",
        "soundPath": "audio/Blame.mp3",
        "correctAnswer": "Blame",
        "answers": ["Blame", "Boy", 
        "Ben", "Boss"],
        "subtitle": "Consonant Blend /bl/",
      },

      {
        "questionText": "Which word has a consonant blend?",
        "soundPath": "audio/Blast.mp3",
        "correctAnswer": "Blast",
        "answers": ["Boy", "Blast", 
        "Ben", "Boss"],
        "subtitle": "Consonant Blend /bl/",
      },

      {
        "questionText": "Which word has a consonant blend?",
        "soundPath": "audio/Blesildas favorite colors.mp3",
        "correctAnswer": "Blesildas favorite colors",
        "answers": ["Boy", "Bird", 
        "Brian", "Blesildas favorite colors"],
        "subtitle": "Consonant Blend /bl/",
      },

      {
        "questionText": "Which word has a consonant blend?",
        "soundPath": "audio/are black and white.mp3",
        "correctAnswer": "are black and white",
        "answers": ["Bake", "are black and white", 
        "Bike", "Book"],
        "subtitle": "Consonant Blend /bl/",
      }, 

  
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



