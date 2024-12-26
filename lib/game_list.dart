//game_list.dart

import 'package:english_fuller/game_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Data model to hold game details.
class GameData {
  final int id;
  final String title;
  final Color color;
  final Color textColor;
  final String gameTitle; 

  GameData({required this.id, 
  required this.title, 
  required this.color, 
  required this.textColor, 
  required this.gameTitle,  });
}

// List of games with their properties.
final List<GameData> games = [
  GameData(id: 1, title: "Easy", color: Colors.yellow, textColor: Colors.black, gameTitle: 'Easy'),
  GameData(id: 2, title: "Moderate", color: const Color.fromARGB(255, 255, 193, 59), textColor: Colors.black, gameTitle: 'Moderate'),
  GameData(id: 3, title: "Hard", color: Colors.orange, textColor: Colors.black, gameTitle: 'Hard'),
];

class GameList extends StatefulWidget {
  const GameList({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _GameListState createState() => _GameListState();
}

class _GameListState extends State<GameList> {
  Set<int> completedGames = {}; // Tracks completed games
  Map<int, int> gameProgress = {}; // Store progress for each game category

  @override
  void initState() {
    super.initState();
    _loadProgress(); // Load progress from SharedPreferences
  }

  /// Reset all completed games
  void _resetCompletedGames() async {
  final prefs = await SharedPreferences.getInstance();
  
  // Clear all saved progress from SharedPreferences
  await prefs.clear();
  
  setState(() {
    completedGames.clear();
    gameProgress.clear(); // Reset the local progress tracking as well
  });
}


  /// Load progress from SharedPreferences
  /// Load progress from SharedPreferences
Future<void> _loadProgress() async {
  final prefs = await SharedPreferences.getInstance();
  setState(() {
    gameProgress = prefs.getKeys().fold({}, (Map<int, int> map, String key) {
      final gameId = int.tryParse(key);
      if (gameId != null) {
        map[gameId] = prefs.getInt(key) ?? 0;
      }
      return map;
    });

    // Load completed games from SharedPreferences
    final completedGameList = prefs.getStringList('completedGames') ?? [];
    completedGames = completedGameList.map((e) => int.parse(e)).toSet();
  });
}


  /// Save progress to SharedPreferences
  Future<void> _saveProgress() async {
  final prefs = await SharedPreferences.getInstance();

  // Save game progress
  gameProgress.forEach((key, value) {
    prefs.setInt(key.toString(), value);
  });

  // Save completed games status
  prefs.setStringList('completedGames', completedGames.map((e) => e.toString()).toList());
}


  /// Mark the game as completed (if all levels are completed)
 void _markGameAsCompleted(int gameId) {
  const totalLevels = 5; // Adjust to your total levels
  final progress = gameProgress[gameId] ?? 0;

  if (progress >= totalLevels) {
    setState(() {
      completedGames.add(gameId);  // Mark the game as completed
    });
    _saveProgress();  // Save completed games set
  }
}




  /// Update progress for a specific game category
  void _updateProgress(int gameId, int progress) {
  setState(() {
    // Ensure progress doesn't exceed the maximum level
    gameProgress[gameId] = progress > 5 ? 5 : progress; // Replace `5` with dynamic `totalLevels` if needed
  });
  _saveProgress();
}






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Game Category",
          style: GoogleFonts.lexendDeca(),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          Text(
            "Choose a Game Category!",
            style: GoogleFonts.lexendDeca(fontSize: 25, color: Colors.black),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: games.length,
              itemBuilder: (context, index) {
                final game = games[index];
                final progress = gameProgress[game.id] ?? 0;
                final isCompleted = completedGames.contains(game.id); // Check if game is completed

                return GameButton(
                  title: game.title,
                  color: game.color,
                  textColor: game.textColor,
                  progress: progress,
                  isCompleted: isCompleted,  // Pass completion status to the button
                  onPressed: () => _startGame(context, game.id),
                );
              },
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: _resetCompletedGames,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Button color for reset
                padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Reset All Games',
                style: GoogleFonts.lexendDeca(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Start a game and handle its completion
  void _startGame(BuildContext context, int gameId) async {
    // For simplicity, we assume each game has 5 levels.
    const totalLevels = 5;
    const currentLevel = 1;

    // Push game details and wait for the result
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => GameDetailPage(
          gameId: gameId,
          currentLevel: currentLevel,  // Pass currentLevel
          onGameCompleted: () => _markGameAsCompleted(gameId),
          updateProgressScore: (progress) => _updateProgress(gameId, progress), 
          totalLevels: totalLevels, gameTitle: '$gameId',  // Pass totalLevels
        ),
      ),
    );

    // Check if the game was marked as completed
    if (result != null && result) {
      _markGameAsCompleted(gameId);
    }
  }
}

class GameButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color color;
  final Color textColor;
  final int progress;
  final bool isCompleted;  // Check if the game is completed

  const GameButton({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.color,
    required this.textColor,
    required this.progress,
    this.isCompleted = false,  // Default to not completed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        width: 90,
        height: 60,
        child: ElevatedButton(
          onPressed: isCompleted ? null : onPressed,  // Disable button if completed
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Text(
                title,
                style: GoogleFonts.lexendDeca(
                  fontSize: 20,
                  color: textColor,
                ),
              ),
              if (isCompleted)  // Show the check icon if completed
                const Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
