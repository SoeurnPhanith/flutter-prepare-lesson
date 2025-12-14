import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stack'),),
      body: Column(
        mainAxisAlignment: .center,
        children: [
          //Profle messager using stack
          Center(child: Text('I am upper moon rank 1', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),)), 
          Stack(
            children: [
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(100),
                  child: Image.asset(
                    'assets/images/six_eye.png',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ), 
                Positioned(
                  top: 78,
                  left: 65,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.green, 
                      borderRadius: BorderRadius.circular(50)
                    ),
                  ),
                )
             ],
          ),

          SizedBox(height: 20,),
          //Cover and profile on facebook
          // Text('My profile on facebook', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),),
          Stack(
              children: [
                //cover
                Container(
                  height: 300,
                  child: ClipRRect(
                    child: Image.asset('assets/images/zenistu.jpg'),
                  ),
                ),
                //profile
                Positioned(
                  top: 145,
                  left: 17,
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(100),
                    child: Image.asset(
                      'assets/images/six_eye.png',
                      width: 155,
                      height: 155,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                //Background Camera on profile
                Positioned(
                  top: 260,
                  left: 120,
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.grey, 
                      borderRadius: BorderRadius.circular(50)
                    ),
                  ),
                ),
                //Camera on profile
                Positioned(
                  top: 265,
                  left: 125,
                  child: Container(
                    width: 25,
                    height: 25,
                    child: Icon(Icons.camera_alt, color: Colors.white,),
                  ),
                ),
                //Background Camera on Cover
                Positioned(
                  top: 220,
                  left: 370,
                  child: Opacity(
                    opacity: 0.4, //make it blur
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.black, 
                        borderRadius: BorderRadius.circular(50)
                      ),
                    ),
                  ),
                ),
                //Camera Icon on cover
                Positioned(
                  top: 227,
                  left: 377,
                  child: Container(
                    width: 25,
                    height: 25,
                    child: Icon(Icons.camera_alt, color: Colors.white,),
                  ),
                )
              ],
          )
        ],
      ),
    );
  }
}