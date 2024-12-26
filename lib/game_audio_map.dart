//game_audio_map.dart

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';

class GameAudioMap {

  // Method to play audio from the asset path using audioplayers package
  static Future<void> playAudio(String soundPath) async {
  try {
    AudioPlayer player = AudioPlayer();
    await player.play(AssetSource(soundPath));
  } catch (e) {
    if (kDebugMode) {
      print("Error playing audio: $e");
    }
  }
}

}
