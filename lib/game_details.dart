//game_details.dart

import 'package:english_fuller/game_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: must_be_immutable
class GameDetailPage extends StatefulWidget {
  final int gameId;
  final int totalLevels;
  int currentLevel;
  final VoidCallback onGameCompleted;
  final Function(int) updateProgressScore; // To update progress in game_list.dart

  GameDetailPage({
    Key? key,
    required this.gameId,
    required this.totalLevels,
    required this.currentLevel,
    required this.onGameCompleted,
    required this.updateProgressScore, required String gameTitle,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _GameDetailPageState createState() => _GameDetailPageState();
}

class _GameDetailPageState extends State<GameDetailPage> {
  late GameContent gameContent;
  String? selectedAnswer;
  String feedbackMessage = "";
  Color feedbackColor = Colors.transparent;
  final AudioPlayer _audioPlayer = AudioPlayer();
  int correctAnswers = 0; // Track the number of correct answers per level
  bool hasAnsweredThisLevel = false; // Prevents multiple score increments per level
  int currentProgress = 0;

  @override
  void initState() {
    super.initState();
    gameContent = GameContent.getGameContent(widget.gameId, widget.currentLevel);
    _loadProgress(); // Load saved score for the current level when the page loads
  }

  void clearAppData() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.clear(); // Clear all SharedPreferences data
  }

  @override
  void dispose() {
    // Stop the audio player and release resources
    _audioPlayer.stop();
    _audioPlayer.dispose();
    super.dispose();
  }



  

  // Load the saved score from SharedPreferences for this level
 Future<void> _loadProgress() async {
  final prefs = await SharedPreferences.getInstance();
  setState(() {
    correctAnswers = prefs.getInt('game_${widget.gameId}_score') ?? 0;  // Load the saved score
    if (correctAnswers > widget.totalLevels) {
      correctAnswers = widget.totalLevels;  // Prevent invalid score (e.g., 6/5)
    }
  });
}



  // Save the score in SharedPreferences
  Future<void> _saveProgress() async {
  final prefs = await SharedPreferences.getInstance();
  
  // Ensure that score doesn't exceed the total levels
  if (correctAnswers > widget.totalLevels) {
    correctAnswers = widget.totalLevels;  // Cap the score at the maximum level
  }
  
  prefs.setInt('game_${widget.gameId}_score', correctAnswers); // Save the cumulative score
}



 



 void _showScoreDialog(BuildContext context) {
  // Playful messages based on score
  String message;
  if (correctAnswers == widget.totalLevels) {
    message = "Wow! You’re a superstar! 🎉🎈 You answer all the levels!";
  } else if (correctAnswers > widget.totalLevels / 5) {
    message = "Great job! 🌟 You're doing awesome! Keep it up!";
  } else {
    message = "Don't give up! 🐾 Practice makes perfect. Try again!";
  }

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text(
          "Congratulations!",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Your Score: $correctAnswers/${widget.totalLevels}",
              style: GoogleFonts.lexendDeca(fontSize: 20),
            ),
            const SizedBox(height: 10),
            Text(
              message,
              style: GoogleFonts.lexendDeca(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              // Close the dialog
              Navigator.of(context).pop();

              // Mark the game as completed if score is perfect
              if (correctAnswers == widget.totalLevels) {
                widget.onGameCompleted(); // Mark game as complete
              }
              // Navigate back to the game list
              Navigator.pop(context);
            },
            child: Text(
              "OK",
              style: GoogleFonts.lexendDeca(fontSize: 18, color: Colors.green),
            ),
          ),
        ],
      );
    },
  );
}


  


  @override
  Widget build(BuildContext context) {
    // Determine the game difficulty (Easy, Moderate, Hard) based on gameId
    String gameDifficulty = '';
    if (widget.gameId == 1) {
      gameDifficulty = 'Easy';
    } else if (widget.gameId == 2) {
      gameDifficulty = 'Moderate';
    } else if (widget.gameId == 3) {
      gameDifficulty = 'Hard';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "$gameDifficulty: Level ${widget.currentLevel} ",
          style: GoogleFonts.lexendDeca(),
        ),
        backgroundColor: Colors.green,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Score: $correctAnswers/${widget.totalLevels}",
              style: GoogleFonts.lexendDeca(fontSize: 18),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  Text(
                    gameContent.subtitle,
                    style: GoogleFonts.lexendDeca(fontSize: 20, color: Colors.black),
                  ),
                  const SizedBox(height: 20),
                    if (gameContent.questionText != null)
                      Text(
                        gameContent.questionText!,
                        style: GoogleFonts.lexendDeca(fontSize: 24, color: Colors.black),
                      ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      playSound(gameContent.soundPath);
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(16),
                      backgroundColor: Colors.blue,
                    ),
                    child: const Icon(Icons.play_arrow),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    feedbackMessage,
                    style: GoogleFonts.lexendDeca(
                      fontSize: 20,
                      color: feedbackColor,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12.0,
                        mainAxisSpacing: 12.0,
                        childAspectRatio: 2.5,
                      ),
                      itemCount: gameContent.answers.length,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return _buildAnswerButton(gameContent.answers[index]);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                if (widget.currentLevel == widget.totalLevels) {
                  _showScoreDialog(context);
                } else {
                  _saveProgress();
                  setState(() {
                    widget.currentLevel++;
                    gameContent = GameContent.getGameContent(widget.gameId, widget.currentLevel);

                    // Reset state for the new level
                    selectedAnswer = null;
                    feedbackMessage = "";
                    feedbackColor = Colors.transparent;
                    hasAnsweredThisLevel = false;
                  });
                }
              },

              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(horizontal: 105, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: Text(
                widget.currentLevel == widget.totalLevels ? "Finish Level" : "Next Level",
                style: GoogleFonts.lexendDeca(fontSize: 20, color: Colors.white),
              ),
            ),
          ),

        ],
      ),
    );
  }

  Widget loadImage(String imagePath) {
    return SizedBox(
      width: 120,
      height: 120,
      child: Image.asset(imagePath),
    );
  }

  Widget _buildAnswerButton(String answer) {
  // Determine button color based on the state
  Color buttonColor;
  if (selectedAnswer == answer) {
    // Highlight the selected answer
    buttonColor = (answer == gameContent.correctAnswer) ? Colors.green : Colors.red;
  } else if (hasAnsweredThisLevel) {
    // Disable unselected answers
    buttonColor = Colors.grey;
  } else {
    // Default color for unanswered buttons
    buttonColor = Colors.blue[300]!;
  }

  return SizedBox(
    width: 90,
    height: 50,
    child: ElevatedButton(
      onPressed: hasAnsweredThisLevel ? null : () => _checkAnswer(answer), // Disable interaction if answered
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.star,
            color: Colors.white,
            size: 20,
          ),
          const SizedBox(width: 4),
          Flexible(
            child: Text(
              answer,
              style: GoogleFonts.lexendDeca(fontSize: 20),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    ),
  );
}



 void _checkAnswer(String answer) {
  if (hasAnsweredThisLevel) return; // Prevent further interaction

  setState(() {
    selectedAnswer = answer; // Save the selected answer
    hasAnsweredThisLevel = true; // Disable all other buttons

    if (answer == gameContent.correctAnswer) {
      feedbackMessage = "Correct!";
      feedbackColor = Colors.green;

      // Increment score if correct
      if (correctAnswers < widget.totalLevels) {
        correctAnswers++;
        _saveProgress(); // Save progress
      }
    } else {
      feedbackMessage = "Wrong!";
      feedbackColor = Colors.red;
    }
  });
}





  void playSound(String soundPath) async {
    await _audioPlayer.play(AssetSource(soundPath));
  }
}
