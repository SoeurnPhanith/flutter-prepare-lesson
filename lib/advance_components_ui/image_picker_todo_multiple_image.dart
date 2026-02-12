import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_prepare_lesson/scrollable_widget/listview_builder_widget.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerTodoMultipleImage extends StatefulWidget {
  const ImagePickerTodoMultipleImage({super.key});

  @override
  State<ImagePickerTodoMultipleImage> createState() =>
      _ImagePickerTodoMultipleImageState();
}

class _ImagePickerTodoMultipleImageState
    extends State<ImagePickerTodoMultipleImage> {
  //initilization here
  File? _imageFile;
  final ImagePicker _image = ImagePicker();

  //this for multiple image
  List<XFile> multipleImages = <XFile>[];

  //this function is get multiple image from gallery
  Future<void> _getMultipleImages() async {
    List<XFile> _imagesList = <XFile>[];
    
    try{
      _imagesList = await _image.pickMultiImage(
        maxHeight: 300, 
        maxWidth: 300, 
        imageQuality: 100
      );
    }on Exception catch (error){
      print(error);
    }

    //if no images selected so return nothing
    if(!mounted) return;
    setState(() {
      multipleImages = _imagesList;
    });
    
  }

  //Create a Customer Widget to make lesson code in MaterailApp
  Widget _buildImageGrid() {
    return GridView.count(
      crossAxisCount: 3,
      children: List.generate(multipleImages.length, (index) {
        File imageFile = File(multipleImages[index].path);

        return Image.file(
          imageFile, 
          width: 300,
          height: 300,
          fit: BoxFit.cover,
        );
      }),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter ImagePicker Demo',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
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
                        decoration: BoxDecoration(color: Colors.grey),
                        child: Icon(Icons.image, size: 60),
                      ),
              ),
              GestureDetector(
                onTap: () => _getMultipleImages(),
                child: Container(
                  width: 125,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Get Image',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
              
            ],
          ),
        ],
      ),
    );
  }
}
