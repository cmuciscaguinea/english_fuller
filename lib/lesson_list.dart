//lesson_list.dart

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'lesson_details.dart';

class LessonsList extends StatefulWidget {
  const LessonsList({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LessonsListState createState() => _LessonsListState();
}

class _LessonsListState extends State<LessonsList> {
  final List<String> lessons = [
    'Lesson 1: Alphabets Sounds',
    'Lesson 2: Vowel Sound (Aa)',
    'Lesson 3: Vowel Sound (Ee)',
    'Lesson 4: Vowel Sound (Ii)',
    'Lesson 5: Vowel Sound (Oo)',
    'Lesson 6: Vowel Sound (Uu)',
    'Lesson 7: Hickory Dickory Dock',
    'Lesson 8: Incy Wincy Spider',
    'Lesson 9: Miss Polly had a Dolly',
    'Lesson 10: Rhyming Words /al/',
    'Lesson 11: Rhyming Words /ar/',
    'Lesson 12: Rhyming Words /at/',
    'Lesson 13: Rhyming Words /ee/',
    'Lesson 14: Rhyming Words /ell/',
    'Lesson 15: Rhyming Words /uck/',
    'Lesson 16: Words with long a /ey/',
    'Lesson 17: Words with ai /ey/',
    'Lesson 18: Words with aw /ow/',
    'Lesson 19: Words with ay /ey/',
    'Lesson 20: Words with ea /ë/ or /iy/',
    'Lesson 21: Words with ee /ë/ or /iy/',
    'Lesson 22: Words with /ew/',
    'Lesson 23: Words with i /ay/',
    'Lesson 24: Words with /oi/',
    'Lesson 25: Words with -oo',
    'Lesson 26: Words with ou /aw/',
    'Lesson 27: Words with o or u /a/',
    'Lesson 28: Words with o or u /o/',
    'Lesson 29: Words with ow /aw/',
    

    'Lesson 30: Consonant Blend /bl/',
    'Lesson 31: Consonant Blend /br/',
    'Lesson 32: Consonant Blend /ch/',
    'Lesson 33: Consonant Blend /cl/',
    'Lesson 34: Consonant Blend /cr/',
    'Lesson 35: Consonant Blend /dr/',
    'Lesson 36: Consonant Blend /fl/',
    'Lesson 37: Consonant Blend /fr/',
    'Lesson 38: Consonant Blend /gl/',
    'Lesson 39: Consonant Blend /gr/',
    'Lesson 40: Consonant Blend /pl/',
    'Lesson 41: Consonant Blend /qu/',
    'Lesson 42: Consonant Blend /sh/',
    'Lesson 43: Consonant Blend /sp/',
    'Lesson 44: Consonant Blend /st/',
    'Lesson 45: Consonant Blend /sw/',
    'Lesson 46: Consonant Blend /tr/',
    'Lesson 47: Consonant Blend /tw/',
    'Lesson 48: Consonant Blend /wh/',

    'Lesson 49: Consonant Cluster /str/',
    'Lesson 50: Consonant Cluster /spl/',
    'Lesson 51: Consonant Cluster /scr/',

    'Lesson 52: Final Consonant /lt/',
    'Lesson 53: Final Consonant /ft/',
    'Lesson 54: Final Consonant /ct/',
    'Lesson 55: Final Consonant /rt/',
    'Lesson 56: Final Consonant /nt/',
    'Lesson 57: Final Consonant /nk/',
    'Lesson 58: Final Consonant /rk/',
    'Lesson 59: Final Consonant /sk/',
    'Lesson 60: Final Consonant /nd/',
    
  ];

  Set<int> completedLessons = {};

  // Load completed lessons from SharedPreferences
  void loadCompletedLessons() async {
  final prefs = await SharedPreferences.getInstance();
  setState(() {
    completedLessons = prefs.getStringList('completedLessons')?.map((e) => int.parse(e)).toSet() ?? {};
  });
}

void clearAppData() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.clear(); // Clear all SharedPreferences data
}



  // Save completed lessons to SharedPreferences
  void saveCompletedLessons() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setStringList('completedLessons', completedLessons.map((e) => e.toString()).toList());
  }

  // Reset all completed lessons and progress
  void resetCompletedLessons() async {
  final prefs = await SharedPreferences.getInstance();

    // Clear completed lessons and reset progress for all lessons
    setState(() {
      completedLessons.clear();  // Clear the checkmarks
    });

    // Reset progress for all lessons (set progress to 0 for each)
    for (int i = 1; i <= lessons.length; i++) {
      await prefs.remove('lesson_${i}_progress');  // Remove progress for each lesson
    }

    saveCompletedLessons();  // Save the cleared completed lessons list
  }


  @override
  void initState() {
    super.initState();
    loadCompletedLessons();  // Load completed lessons when the screen initializes
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('The Lessons', style: TextStyle(fontFamily: 'LexendDeca'),),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.home),
          onPressed: () {
            // Navigate to home screen when all lessons are complete
            Navigator.pop(context); // Pop back to the previous screen (home screen)
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8.0),
              itemCount: lessons.length,
              itemBuilder: (context, index) {
                bool isCompleted = completedLessons.contains(index + 1);

                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ElevatedButton(
                    onPressed: () async {
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LessonDetailScreen(lessonNumber: index + 1),
                        ),
                      );

                      // If the lesson is completed, mark it as completed in the list
                      if (result == true && !completedLessons.contains(index + 1)) {
                        setState(() {
                          completedLessons.add(index + 1);
                        });
                        saveCompletedLessons(); // Save completed lessons after the change
                      }
                    },

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // Keep the button always green
                      disabledBackgroundColor: Colors.green, // Button stays green even when disabled
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            lessons[index],
                            style: const TextStyle(
                        fontFamily: 'LexendDeca', // Offline font
                        fontSize: 17,
                        color: Colors.white,
                      ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        if (isCompleted)
                          const Icon(
                            Icons.check,
                            color: Colors.white, // White check icon
                            size: 24,
                          ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          // Button to reset completed lessons
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: ElevatedButton(
          //     onPressed: resetCompletedLessons,
          //     style: ElevatedButton.styleFrom(
          //       backgroundColor: Colors.red, // Button color for reset
          //       padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
          //       shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(10),
          //       ),
          //     ),
          //     child: Text(
          //       'Reset All Lessons',
          //       style: GoogleFonts.lexendDeca(fontSize: 20, color: Colors.white),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
