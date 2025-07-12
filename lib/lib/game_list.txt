//game_list.dart

import 'package:english_fuller/game_details.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Data model to hold game details.
class GameData {
  final int id;
  final String title;
  final Color color;
  final Color textColor;
  final String gameTitle;

  GameData({
    required this.id,
    required this.title,
    required this.color,
    required this.textColor,
    required this.gameTitle,
  });
}

// List of games with their properties.
final List<GameData> games = [
  GameData(id: 1, title: "Level 1", color: Colors.yellow, textColor: Colors.black, gameTitle: 'Level 1'),
  GameData(id: 2, title: "Level 2", color: const Color.fromARGB(255, 255, 193, 59), textColor: Colors.black, gameTitle: 'Level 2'),
  GameData(id: 3, title: "Level 3", color: Colors.orange, textColor: Colors.black, gameTitle: 'Level 3'),
];

class GameList extends StatefulWidget {
  const GameList({super.key});

  @override
  _GameListState createState() => _GameListState();
}

class _GameListState extends State<GameList> {
  Set<int> completedGames = {};
  Map<int, int> gameProgress = {};

  @override
  void initState() {
    super.initState();
    _loadProgress();
  }

  void clearAppData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
    setState(() {
      completedGames.clear();
      gameProgress.clear();
    });
  }

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

      final completedGameList = prefs.getStringList('completedGames') ?? [];
      completedGames = completedGameList.map((e) => int.parse(e)).toSet();
    });
  }

  Future<void> _saveProgress() async {
    final prefs = await SharedPreferences.getInstance();
    gameProgress.forEach((key, value) {
      prefs.setInt(key.toString(), value);
    });
    prefs.setStringList('completedGames', completedGames.map((e) => e.toString()).toList());
  }

  void _markGameAsCompleted(int gameId) {
    const totalLevels = 10;
    final progress = gameProgress[gameId] ?? 0;

    if (progress >= totalLevels) {
      setState(() {
        completedGames.add(gameId);
      });
      _saveProgress();
    }
  }

  void _updateProgress(int gameId, int progress) {
    setState(() {
      gameProgress[gameId] = progress > 10 ? 10 : progress;
    });
    _saveProgress();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Game",
          style: TextStyle(fontFamily: 'LexendDeca'),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          const Text(
            "Choose a Game Level!",
            style: TextStyle(fontSize: 25, color: Colors.black, fontFamily: 'LexendDeca'),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: games.length,
              itemBuilder: (context, index) {
                final game = games[index];
                final progress = gameProgress[game.id] ?? 0;
                final isCompleted = completedGames.contains(game.id);

                return GameButton(
                  title: game.title,
                  color: game.color,
                  textColor: game.textColor,
                  progress: progress,
                  isCompleted: isCompleted,
                  onPressed: () => _startGame(context, game.id),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: clearAppData,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Reset The Games',
                style: TextStyle(fontSize: 20, color: Colors.white, fontFamily: 'LexendDeca'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _startGame(BuildContext context, int gameId) async {
    const totalLevels = 5;
    const currentLevel = 1;

    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => GameDetailPage(
          gameId: gameId,
          currentLevel: currentLevel,
          onGameCompleted: () => _markGameAsCompleted(gameId),
          updateProgressScore: (progress) => _updateProgress(gameId, progress),
          totalLevels: totalLevels,
          gameTitle: '$gameId',
        ),
      ),
    );

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
  final bool isCompleted;

  const GameButton({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.color,
    required this.textColor,
    required this.progress,
    this.isCompleted = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        width: 90,
        height: 60,
        child: ElevatedButton(
          onPressed: isCompleted ? null : onPressed,
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
                style: TextStyle(fontSize: 25, color: textColor, fontFamily: 'LexendDeca'),
              ),
              if (isCompleted)
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
