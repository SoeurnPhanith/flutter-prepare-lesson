import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Container'),),
      body: Column(
        crossAxisAlignment: .center,
        mainAxisAlignment: .center,
        children: [
          //Container 1
          Center(
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                //color: Colors.green, 
                borderRadius: BorderRadius.circular(25), 
                gradient: LinearGradient(
                  //Color flow ជាបន្ទាត់ត្រង់
                  colors: [const Color.fromARGB(255, 165, 13, 203), Colors.white10], 
                  begin: AlignmentGeometry.topCenter, 
                  end: AlignmentGeometry.bottomCenter,
                  stops: [0.0, 0.9],
                  tileMode: TileMode.clamp
                )
              ),
            ),
          ),
          SizedBox(height: 25,),
          //Container 2
          Container(
            width: double.infinity,
            height: 250,
            child: Image.asset('assets/images/ranguko.jpg', fit: BoxFit.cover,)
          )
        ],
      ),  
    );
  }
}