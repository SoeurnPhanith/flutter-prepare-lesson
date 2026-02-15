import 'dart:io';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoRenderFromAssets extends StatefulWidget {
  const VideoRenderFromAssets({super.key});

  @override
  State<VideoRenderFromAssets> createState() => _VideoRenderFromAssetsState();
}

class _VideoRenderFromAssetsState extends State<VideoRenderFromAssets> {

  //initilization variable
  File? _video; // (not used, you can remove later if you want)
  late final VideoPlayerController _videoPlayerController;

  //override initSateMethod
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _videoPlayerController = VideoPlayerController.asset('assets/videos/tengen.mp4')
      ..initialize().then((_) {
        if (!mounted) return;

        // make video play forever
        _videoPlayerController.setLooping(true);

        setState(() {});
        _videoPlayerController.play();
      });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isInit = _videoPlayerController.value.isInitialized;
    final isPlaying = _videoPlayerController.value.isPlaying;

    return Scaffold(
      appBar: AppBar(
        title: Text('Show image in app from assets', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),

      body: Column(
        children: [
          AspectRatio(
            aspectRatio: isInit ? _videoPlayerController.value.aspectRatio : 16.0/9.0,
            child:(isInit)
                  ?VideoPlayer(_videoPlayerController)
                  :const Center(child: CircularProgressIndicator()),
          ),

          const SizedBox(height: 16),

//This code is for playing or push 

          // GestureDetector(
          //   onTap: () async {
          //     if (!isInit) return;

          //     if (isPlaying) {
          //       await _videoPlayerController.pause();
          //     } else {
          //       await _videoPlayerController.play();
          //     }

          //     if (!mounted) return;
          //     setState(() {});
          //   },
          //   child: Container(
          //     width: 140,
          //     height: 50,
          //     alignment: Alignment.center,
          //     decoration: BoxDecoration(
          //       color: Colors.lightBlue,
          //       borderRadius: BorderRadius.circular(10)
          //     ),
          //     child: isPlaying
          //           ? Text('Pause')
          //           : Text('play')
          //   ),
          // )
        ],
      ),
    );
  }
}
