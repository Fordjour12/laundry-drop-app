import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerProvider extends ChangeNotifier {
  late VideoPlayerController controller;

  VideoPlayerProvider() {
    controller = VideoPlayerController.asset('assets/videos/laundry.mp4')
      ..initialize().then((_) {
        notifyListeners();
      });
    controller.play();
    controller.setLooping(true);
  }
}
