import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';


//in previous video, we diccuss about how to implement image_picker
//image_picker also allow to pick up video

//let try to do video picker using image_picker
//first, remember insert video to assets folder

class VideoPickerAndVideoPlayerTodo extends StatefulWidget {
  const VideoPickerAndVideoPlayerTodo({super.key});

  @override
  State<VideoPickerAndVideoPlayerTodo> createState() => _VideoPickerAndVideoPlayerTodoState();
}

class _VideoPickerAndVideoPlayerTodoState extends State<VideoPickerAndVideoPlayerTodo> {

  //initilization variable
  File? _video;

  //this class need to add video_player library
  VideoPlayerController? _videoPlayerController;
  ImagePicker _imagePicker = ImagePicker();

  //create a method for get video picker
  Future<void> _getVideo() async{
    XFile? video = await _imagePicker.pickVideo(
      //pick up video frim gallery
      source: ImageSource.gallery,
    );

    _video = File(video!.path);
    _videoPlayerController = VideoPlayerController.file(_video!)
    ..initialize().then((_){
      //this setState is ensure the video is initilized before playing
      setState(() {
        _videoPlayerController!.play();
      });
    });
  } 

  //-----------All of these can upload or pick video to show success
  //right now implement to do render video from asset folder
  //to do it another page name render_video_from_assets()

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video picker and Player Demo'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),

      body: Column(
        children: [
          (_video != null)
          ? AspectRatio(
            aspectRatio: 16.0/9.0,
            child: (_videoPlayerController!.value.isInitialized) 
                  ? VideoPlayer(_videoPlayerController!)
                  : Container(),
          )
          : AspectRatio(
            aspectRatio: 16.0/9.0, 
            child: Container(
              alignment: Alignment.center,
              color: Colors.grey,
              child: Text('please button for select a video'),
            ),
          ),

          //button
          SizedBox(height: 30,),
          GestureDetector(
            onTap: () => _getVideo(),
            child: Container(
              alignment: Alignment.center, 
              width: 130,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Text('Upload', style: TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.w700),),
            ),
          )
        ],
      ),
    );
  }
}