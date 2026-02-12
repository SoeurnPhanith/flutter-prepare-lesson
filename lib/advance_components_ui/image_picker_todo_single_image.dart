import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerTodoSingleImage extends StatefulWidget {
  const ImagePickerTodoSingleImage({super.key});

  @override
  State<ImagePickerTodoSingleImage> createState() => _ImagePickerTodoState();
}

class _ImagePickerTodoState extends State<ImagePickerTodoSingleImage> {

  //initilization here
  File? _imageFile;
  final ImagePicker _image = ImagePicker();

  //this function is get image from gallery
  Future<void> _getImage() async{
    XFile? file = await _image.pickImage(
      //source has two options, gallery and camera
      //gallery in picking images from gallery
      //while camera is taking photo using camera on phone
      source: ImageSource.gallery,
      //these are picking image size
      maxHeight: 450,
      maxWidth: 450
    );

    //if image is picked so return images path
    if(file != null){
      setState(() {
        _imageFile = File(file.path);
      });
    }
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter ImagePicker Demo', style: TextStyle(fontSize: 25, color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsetsGeometry.all(8.0),
                child: (_imageFile != null)
                     ? Container(
                      width: 250,
                      height: 250,
                      child: Image.file(_imageFile!, fit: BoxFit.cover),
                     ) 
                     : Container(
                      width: 250,
                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.grey
                      ),
                      child: Icon(Icons.image, size: 60,),
                     ) ,
              ), 
              GestureDetector(
                onTap: ()=> _getImage(),
                child: Container(
                  width: 125,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue, 
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Text('Get Image', style: TextStyle(fontSize: 20, color: Colors.white ),)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}