//lessons_details.dart

import 'package:english_fuller/lesson_data.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'lesson_audio_map.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LessonDetailScreen extends StatefulWidget {
  final int lessonNumber;
  static const String routeName = '/lessondetails';

  const LessonDetailScreen({Key? key, required this.lessonNumber}) : super(key: key);

  @override
  State<LessonDetailScreen> createState() => _LessonDetailScreenState();
}

class _LessonDetailScreenState extends State<LessonDetailScreen> {
  final AudioPlayer audioPlayer = AudioPlayer();
  int currentWordIndex = 0; // Track which word is being highlighted
  bool hasPlayed = false; // To count progress only once
  int currentProgress = 0; // To track words played
  int totalWords = 0; // Total number of words in the lesson
  int _syncSessionId = 0;
  Set<int> playedWords = {}; // Set to track the words that have been played
  bool isPlaying = false;
  late bool isFocusedLesson;
  

   @override
  void initState() {
    super.initState();
    final lessonDetails = getLessonDetails(widget.lessonNumber);
    totalWords = lessonDetails['words'].length;
    loadProgress();
    // Update the isFocusedLesson to check if the current lesson is in the list of lessons
    isFocusedLesson = (widget.lessonNumber == 7 || widget.lessonNumber == 8 || widget.lessonNumber == 9 ||
                      [1, 2, 3, 4, 5, 6, 10, 60].contains(widget.lessonNumber));
  }

  @override
  void dispose() {
    // Stop the audio player and release resources
    audioPlayer.stop();
    audioPlayer.dispose();
    super.dispose();
  }

  void clearAppData() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.clear(); // Clear all SharedPreferences data
}


  void updateCurrentWord(int index) {
    setState(() {
      currentWordIndex = index;
    });
  }

  // Future<void> loadProgress() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   setState(() {
  //     currentProgress = prefs.getInt('lesson_${widget.lessonNumber}_progress') ?? 0;
  //   });
  // }

  Future<void> loadProgress() async {
  final prefs = await SharedPreferences.getInstance();
  setState(() {
    currentProgress = prefs.getInt('lesson_${widget.lessonNumber}_progress') ?? 0;

    final playedWordList = prefs.getStringList('lesson_${widget.lessonNumber}_playedWords') ?? [];
    playedWords = playedWordList.map((e) => int.tryParse(e) ?? -1).where((e) => e >= 0).toSet();
  });
}


  // Future<void> saveProgress() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   await prefs.setInt('lesson_${widget.lessonNumber}_progress', currentProgress);
  // }

  Future<void> saveProgress() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setInt('lesson_${widget.lessonNumber}_progress', currentProgress);
  await prefs.setStringList(
    'lesson_${widget.lessonNumber}_playedWords',
    playedWords.map((e) => e.toString()).toList(),
  );
}


  // Future<void> resetProgress() async {
  //   setState(() {
  //     currentProgress = 0;
  //     currentWordIndex = -1;
  //     playedWords.clear();  // Clear played words
  //   });
  //   final prefs = await SharedPreferences.getInstance();
  //   await prefs.setInt('lesson_${widget.lessonNumber}_progress', 0);  // Reset progress in SharedPreferences
  // }


  Future<void> resetProgress() async {
  setState(() {
    currentProgress = 0;
    currentWordIndex = -1;
    playedWords.clear();
  });
  final prefs = await SharedPreferences.getInstance();
  await prefs.setInt('lesson_${widget.lessonNumber}_progress', 0);
  await prefs.remove('lesson_${widget.lessonNumber}_playedWords');
}



  Future<void> playSound(String sentence, int index) async {
  final lessonDetails = getLessonDetails(widget.lessonNumber);
  final List<int>? timings = lessonDetails['timings'] as List<int>?;

  updateCurrentWord(index); // Update the current word index

  // Highlight the first word
  setState(() {
    currentWordIndex = 0;
  });

  if (!playedWords.contains(index)) {
    setState(() {
      currentProgress = index + 1; // Increment progress
      playedWords.add(index);     // Mark the word as played
    });
    await saveProgress(); // Save updated progress
  }

  try {
    String audioPath = 'sounds/';
    String lessonFolder = 'lessons${widget.lessonNumber}';
    if (timings != null && timings.isNotEmpty) {
      // Sync text with audio if timings are available
      _syncTextWithAudio(sentence, timings);
    }

    if (lessonAudioMap.containsKey(widget.lessonNumber)) {
      List<String> lessonFiles = lessonAudioMap[widget.lessonNumber]!;
      String fileName = _getAudioFileName(lessonFiles, sentence);

      if (fileName.isEmpty) {
        if (kDebugMode) {
          print("No audio file found for word: $sentence in Lesson ${widget.lessonNumber}");
        }
        return;
      }

      audioPath += '$lessonFolder/$fileName';

      if (audioPath.isNotEmpty) {
        if (kDebugMode) {
          print("Attempting to play: $audioPath");
        }
        // Source audioSource = AssetSource(audioPath);
        // await audioPlayer.play(audioSource);

        Source audioSource = AssetSource(audioPath);
        await audioPlayer.stop(); // ✅ Ensures replay
        await audioPlayer.play(audioSource);

        if (kDebugMode) {
          print("Playback started for $audioPath");
        }
      }
    }
  } catch (e) {
    if (kDebugMode) {
      print("Error playing sound: ${e.toString()}");
    }
  }
}


  String _getAudioFileName(List<String> lessonFiles, String sentence) {
    String normalizedSentence = sentence.replaceAll(RegExp(r'[^a-zA-Z\s]'), '').toLowerCase();
    String matchedFile = '';

    for (String file in lessonFiles) {
      String normalizedFileName = file.split('.')[0].toLowerCase();

      // Check for an exact match
      if (normalizedSentence == normalizedFileName) {
        matchedFile = file;
        break;
      }

      // Check for partial match
      if (normalizedSentence.contains(normalizedFileName) || normalizedFileName.contains(normalizedSentence)) {
        if (normalizedFileName.length > matchedFile.length) {
          matchedFile = file;
        }
      }
    }

    return matchedFile;
  }

    void _syncTextWithAudio(String sentence, List<int>? timings) {
    if (timings == null || timings.isEmpty) {
      setState(() {
        currentWordIndex = -1;
      });
      return;
  }

        final words = sentence.split(" ");
    // final words = sentence.replaceAll(RegExp(r'[.,]'), '').split(" ");
    // if (words.length != timings.length) {
    //   if (kDebugMode) {
    //     print("Mismatch between words and timings length");
    //   }
    //   return;
    // }
    final int sessionId = ++_syncSessionId; // Invalidate previous sessions

    for (int i = 0; i < words.length && i < timings.length; i++) {
      Future.delayed(Duration(milliseconds: timings[i]), () {
        if (mounted && sessionId == _syncSessionId) {
          setState(() {
            currentWordIndex = i;
          });
        }
      });
    }

    Future.delayed(Duration(milliseconds: timings.last + 300), () {
      if (mounted && sessionId == _syncSessionId) {
        setState(() {
          currentWordIndex = -1;
        });
      }
    });
  }

  Widget buildHighlightedSentence(String sentence, int currentWordIndex, {TextAlign textAlign = TextAlign.left}) {
  //  final words = sentence.replaceAll(RegExp(r'[.,]'), '').split(" ");
   final words = sentence.split(" ");
    // if (words.length != timings.length) {
    //   if (kDebugMode) {
    //     print("Mismatch between words and timings length");
    //   }
    //   return;
    // }
    return Wrap(
      children: words.asMap().entries.map((entry) {
        final index = entry.key;
        // final word = entry.value;
        final sentence = entry.value;
        bool isHighlighted = index == currentWordIndex;

        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 2.0),
          margin: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            textAlign: TextAlign.center,
            sentence,
            style: TextStyle(
              fontFamily: 'LexendDeca',
              fontSize: 25,
              color: isHighlighted
                  ? (widget.lessonNumber == 7 || widget.lessonNumber == 8 || widget.lessonNumber == 9 ? Colors.red : Colors.black)
                  : Colors.black,  // Default color is black
              fontWeight: isHighlighted ? FontWeight.normal : FontWeight.normal,
            ),
            
            
          ),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final lessonDetails = getLessonDetails(widget.lessonNumber);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              lessonDetails['title'],
              style: const TextStyle(fontFamily: 'LexendDeca'),
            ),
            Text(
              'Progress ${widget.lessonNumber}: $currentProgress/$totalWords',
              style: const TextStyle(fontFamily: 'LexendDeca', color: Colors.white, fontSize: 17),
            ),
          ],
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () async {
            await saveProgress();
            // ignore: use_build_context_synchronously
            Navigator.of(context).pop();
            if (kDebugMode) {
              print("Saving current progress: $currentProgress");
            }
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              lessonDetails['subTitle'],
              style: const TextStyle(
                fontFamily: 'LexendDeca',
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: lessonDetails['words'].length,
              itemBuilder: (context, index) {
                String sentence = lessonDetails['words'][index];

                return Container(
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.symmetric(vertical: 5.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 4,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: isPlaying
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
            child: buildHighlightedSentence(
              sentence,
              currentWordIndex,
              textAlign: TextAlign.center, // Ensure text alignment is centered
            ),
          ),
                            const SizedBox(height: 8.0),
                            IconButton(
                              icon: const Icon(
                                Icons.play_circle,
                                color: Colors.green,
                                size: 40,
                              ),
                              onPressed: () {
                                playSound(sentence, index); // Start audio playback
                              },
                            ),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: buildHighlightedSentence(sentence, currentWordIndex),
                            ),
                            if (playedWords.contains(index)) // ✅ Checkmark BEFORE play button
                              const Padding(
                                padding: EdgeInsets.only(right: 8.0),
                                child: Icon(
                                  Icons.check_circle,
                                  color: Colors.green,
                                  size: 30,
                                ),
                              ),
                              
                              
                            IconButton(
                              icon: const Icon(
                                Icons.play_circle,
                                color: Colors.green,
                                size: 40,
                              ),
                              onPressed: () {
                                playSound(sentence, index);
                              },
                            ),
                            // if (playedWords.contains(index)) // <-- This line shows the check icon
                            //   const Icon(
                            //     Icons.check_circle,
                            //     color: Colors.green,
                            //     size: 30,
                            //   ),
                          ],
                        ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 100),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                // Mark the lesson as complete if progress equals total words
                bool isCompleted = currentProgress == totalWords;

                // Pass the completion status back to the previous screen (lesson list)
                Navigator.pop(context, isCompleted);  // Pass 'true' if complete, else 'false'
                if (kDebugMode) {
                  print("Proceed to Next Lesson");
                }
              },
              child: const Text(
                'Next Lesson',
                style: TextStyle(fontFamily: 'LexendDeca', color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
