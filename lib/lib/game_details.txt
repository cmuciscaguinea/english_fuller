//game_details.dart

import 'package:english_fuller/game_data.dart';
import 'package:flutter/material.dart';
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

  @override
  void dispose() {
    _audioPlayer.stop();
    _audioPlayer.dispose();
    super.dispose();
  }

  Future<void> _loadProgress() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      correctAnswers = prefs.getInt('game_${widget.gameId}_score') ?? 0;
      if (correctAnswers > widget.totalLevels) {
        correctAnswers = widget.totalLevels;
      }
    });
  }

  Future<void> _saveProgress() async {
    final prefs = await SharedPreferences.getInstance();
    if (correctAnswers > widget.totalLevels) {
      correctAnswers = widget.totalLevels;
    }
    prefs.setInt('game_${widget.gameId}_score', correctAnswers);
  }

  void _showScoreDialog(BuildContext context) {
    String message;
    if (correctAnswers == widget.totalLevels) {
      message = "Wow! You’re a superstar! 🎉🎈 You answered all the levels!";
    } else if (correctAnswers > widget.totalLevels / 5) {
      message = "Great job! 🌟 You're doing awesome!";
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
                style: const TextStyle(fontFamily: 'LexendDeca', fontSize: 20),
              ),
              const SizedBox(height: 10),
              Text(
                message,
                style: const TextStyle(fontFamily: 'LexendDeca', fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                if (correctAnswers == widget.totalLevels) {
                  widget.onGameCompleted();
                }
                Navigator.pop(context);
              },
              child: const Text(
                "OK",
                style: TextStyle(fontFamily: 'LexendDeca', fontSize: 18, color: Colors.green),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    String gameDifficulty = '';
    if (widget.gameId == 1) {
      gameDifficulty = 'Level 1';
    } else if (widget.gameId == 2) {
      gameDifficulty = 'Level 2';
    } else if (widget.gameId == 3) {
      gameDifficulty = 'Level 3';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "$gameDifficulty: Question ${widget.currentLevel}",
          style: const TextStyle(fontFamily: 'LexendDeca', fontSize: 19),
        ),
        backgroundColor: Colors.green,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Score: $correctAnswers/${widget.totalLevels}",
              style: const TextStyle(fontFamily: 'LexendDeca', fontSize: 18),
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
                    textAlign: TextAlign.center,
                    gameContent.subtitle,
                    style: const TextStyle(fontFamily: 'LexendDeca', fontSize: 23, color: Colors.black),
                  ),
                  
                  const SizedBox(height: 20),
                  if (gameContent.questionText != null)
                    Text(
                      textAlign: TextAlign.center,
                      gameContent.questionText!,
                      style: const TextStyle(fontFamily: 'LexendDeca', fontSize: 23, color: Colors.black),
                    ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      playSound(gameContent.soundPath);
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(15),
                      backgroundColor: Colors.blue,
                    ),
                    child: const Icon(Icons.play_arrow),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    feedbackMessage,
                    style: TextStyle(fontFamily: 'LexendDeca', fontSize: 20, color: feedbackColor),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12.0,
                        mainAxisSpacing: 12.0,
                        childAspectRatio: 1.5,
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
                style: const TextStyle(fontFamily: 'LexendDeca', fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAnswerButton(String answer) {
    Color buttonColor;
    if (selectedAnswer == answer) {
      buttonColor = (answer == gameContent.correctAnswer) ? Colors.green : Colors.red;
    } else if (hasAnsweredThisLevel) {
      buttonColor = Colors.grey;
    } else {
      buttonColor = Colors.blue[300]!;
    }

    return Container(
      padding: const EdgeInsets.all(4),
      child: ElevatedButton(
        onPressed: hasAnsweredThisLevel ? null : () => _checkAnswer(answer),
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 6),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.star,
              color: Colors.white,
              size: 20,
            ),
            const SizedBox(width: 8),
            Flexible(
              child: Text(
                answer,
                style: const TextStyle(fontFamily: 'LexendDeca', fontSize: 21),
                textAlign: TextAlign.center,
                maxLines: 3,
                overflow: TextOverflow.visible,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _checkAnswer(String answer) {
    if (hasAnsweredThisLevel) return;

    setState(() {
      selectedAnswer = answer;
      hasAnsweredThisLevel = true;

      if (answer == gameContent.correctAnswer) {
        feedbackMessage = "Correct!";
        feedbackColor = Colors.green;

        if (correctAnswers < widget.totalLevels) {
          correctAnswers++;
          _saveProgress();
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
