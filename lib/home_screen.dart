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
        textTheme: GoogleFonts.lexendDecaTextTheme(Theme.of(context).textTheme),
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
            style: GoogleFonts.lexendDeca(fontWeight: FontWeight.bold),
          ),
          content: Text(
            '1. Click Start Learning to learn the lessons.\n'
            '2. Theres 60 lessons to learn.\n'
            '3. Play button to play a sound of letters and words. ▶️🎵\n'
            '4. Read, listen, and practice to improve your understanding. 📖👂\n'
            '5. Also thers progress score in lessons to improve your understanding. 💯\n'
            '6. As mark check in lessons if you complete the progress score. ✔',
            style: GoogleFonts.lexendDeca(fontSize: 16),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
                Navigator.pushNamed(context, '/lessonslist'); // Navigate to lessons
              },
              child: Text(
                'Start Learning',
                style: GoogleFonts.lexendDeca(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text(
                'Cancel',
                style: GoogleFonts.lexendDeca(
                  color: Colors.red,  
                  fontWeight: FontWeight.bold,
                  fontSize: 18
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
          title: Text(
            'How to Play',
            style: GoogleFonts.lexendDeca(fontWeight: FontWeight.bold),
          ),
          content: Text(
            '1. Click Start Playing to play the game.\n'
            '2. There three categories of games: Easy, Moderate and Hard.\n'
            '3. Every categories has five levels. 🌟🌟🌟🌟🌟\n'
            '3. There Play button to play the sound of words & letters. ▶️👂🎵 \n'
            '4. Complete all levels to score points. 🌟🌟🌟\n'
            '5. Enjoy learning with games! ❤🎉🎈',
            style: GoogleFonts.lexendDeca(fontSize: 16,),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
                Navigator.pushNamed(context, '/gamelist'); // Navigate to games
              },
              child: Text(
                'Start Playing',
                style: GoogleFonts.lexendDeca(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text(
                'Cancel',
                style: GoogleFonts.lexendDeca(
                  color: Colors.red,  
                  fontWeight: FontWeight.bold,
                  fontSize: 18,),
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
        title: Text(
          'English Fuller',
          style: GoogleFonts.lexendDeca(
            color: Colors.black,
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
                child: Text(
                  'The Lessons',
                  style: GoogleFonts.lexendDeca(
                    fontSize: 20,
                    color: Colors.white,
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
                child: Text(
                  'The Games',
                  style: GoogleFonts.lexendDeca(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              // About button
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/about');
                },
                child: Text(
                  'About',
                  style: GoogleFonts.lexendDeca(
                    fontSize: 20,
                    color: Colors.green,
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
