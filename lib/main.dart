
import 'package:english_fuller/game_list.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:english_fuller/about.dart';
import 'package:english_fuller/lesson_list.dart';
import 'home_screen.dart';
import 'lesson_data.dart'; 


void main() {
  runApp(const MyApp());

  int lessonNumber = 0;  // Example lesson number
  var lessonDetails = getLessonDetails(lessonNumber);

  if (kDebugMode) {
    print(lessonDetails);
  }
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Simulate some async initialization task
  Future<void> _simulateInitialization() async {
    await Future.delayed(const Duration(seconds: 3)); // Simulate a 3-second loading process
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ENGLISH FULLER',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
         '/lessonslist': (context) => const LessonsList(),
        '/about': (context) => AboutScreen(),
        '/gamelist': (context) => const GameList(),
      },
      // Set 'home' to the screen you want to show initially
      home: FutureBuilder(
        future: _simulateInitialization(),  // Simulate some async work
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Display your logo here
                    Image.asset('assets/icon/appicon4.png', height: 300),  // Correct path
                    const SizedBox(height: 20),  // Space between logo and loading indicator
                    const CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.green),  // Set loading color to green
                    ),
                  ],
                ),
              ),
            );
          } else if (snapshot.hasError) {
            return Scaffold(
              body: Center(
                child: Text('Error loading app: ${snapshot.error}'),
              ),
            );
          } else {
            return const HomeScreen();
          }
        },
      ),
    );
  }
}
