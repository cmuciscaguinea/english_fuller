import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'English Fuller',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: Theme.of(context).textTheme.apply(
           fontFamily: 'LexendDeca', // Apply the offline LexendDeca font globally
           ),
        ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Function to show "How to Use Lessons" dialog
  void _showHowToUseLessonsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'How to Use Lessons',
            style: GoogleFonts.lexendDeca(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          content: const Text(
            '1. Tap Start Learning to begin.\n'
            '2. Explore 60 lessons.\n'
            '3. Use the Play button to hear letters and words. ▶️🎵\n'
            '4. Read, listen, and practice to improve. 📖👂\n'
            '5. Track your progress score to enhance understanding. 💯\n'
            '6. Mark lessons complete when progress is achieved. ✔',
             style: TextStyle(fontFamily: 'LexendDeca', fontSize: 15),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
                Navigator.pushNamed(context, '/lessonslist'); // Navigate to lessons
              },
              child: const Text(
                'Start Learning',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'LexendDeca',
                  fontSize: 18
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text(
                'Cancel',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontFamily: 'LexendDeca',
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  // Function to show "How to Play" dialog for games
  void _showHowToPlayDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'How to Play a Game',
           style: TextStyle(fontFamily: 'LexendDeca', fontSize: 20, fontWeight: FontWeight.bold),
          ),
          content: Text(
            '1. Tap Start Playing to begin.\n'
            '2. There are 1-30 Game Lessons.\n'
            '3. Each game lessons has 5 questions. 🌟🌟🌟🌟🌟\n'
            '3. Use the Play button to hear the sound of words & letters. ▶️👂🎵 \n'
            '4. Complete all question to score the points. 🌟🌟🌟\n'
            '5. Have fun learning!  ❤🎉🎈',
            style: GoogleFonts.lexendDeca(fontSize: 15,),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
                Navigator.pushNamed(context, '/gamelist'); // Navigate to games
              },
              child: const Text(
                'Start Playing',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'LexendDeca',
                  fontSize: 18,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text(
                'Cancel',
                style: TextStyle(
                  color: Colors.red,
                  fontFamily: 'LexendDeca',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'English Fuller',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'LexendDeca',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/icon/appbg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/logo/applogo1.png',
                height: 200,
              ),
              const SizedBox(height: 40),
              // Lessons button with "How to Use" dialog
              ElevatedButton(
                onPressed: () {
                  _showHowToUseLessonsDialog(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: const Text(
                  'Lessons',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: 'LexendDeca',
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Games button with "How to Play" dialog
              ElevatedButton(
                onPressed: () {
                  _showHowToPlayDialog(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: const Text(
                  'Games',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: 'LexendDeca',
                  ),
                ),
              ),
              const SizedBox(height: 40),
              // About button
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/about');
                },
                child: const Text(
                  'About',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.green,
                    fontFamily: 'LexendDeca',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
