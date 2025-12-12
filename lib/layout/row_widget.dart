import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: .start,
              crossAxisAlignment: .start,
              children: [
                Container(
                  width: 100,
                  height: 60,
                  color: Colors.green,
                ), 
                Container(
                  width: 100,
                  height: 60,
                  color: Colors.amberAccent,
                ), 
                Container(
                  width: 100,
                  height: 60,
                  color: Colors.blueAccent,
                )
              ],
            ),
            SizedBox(height: 40,),
            //Row2
            Row(
              mainAxisAlignment: .center,
              crossAxisAlignment: .start,
              children: [
                Container(
                  width: 100,
                  height: 60,
                  color: Colors.green,
                ), 
                Container(
                  width: 100,
                  height: 60,
                  color: Colors.amberAccent,
                ), 
                Container(
                  width: 100,
                  height: 60,
                  color: Colors.blueAccent,
                )
              ],
            ),
             SizedBox(height: 40,),
            //Row3
            Row(
              mainAxisAlignment: .end,
              crossAxisAlignment: .start,
              children: [
                Container(
                  width: 100,
                  height: 60,
                  color: Colors.green,
                ), 
                Container(
                  width: 100,
                  height: 60,
                  color: Colors.amberAccent,
                ), 
                Container(
                  width: 100,
                  height: 60,
                  color: Colors.blueAccent,
                )
              ],
            ),
             SizedBox(height: 70,),
            //Row4
            Row(
              mainAxisAlignment: .spaceAround,
              crossAxisAlignment: .start,
              children: [
                Container(
                  width: 100,
                  height: 60,
                  color: Colors.green,
                ), 
                Container(
                  width: 100,
                  height: 60,
                  color: Colors.amberAccent,
                ), 
                Container(
                  width: 100,
                  height: 60,
                  color: Colors.blueAccent,
                )
              ],
            ),
             SizedBox(height: 70,),
            //Row5
            Row(
              mainAxisAlignment: .spaceBetween,
              crossAxisAlignment: .start,
              children: [
                Container(
                  width: 100,
                  height: 60,
                  color: Colors.green,
                ), 
                Container(
                  width: 100,
                  height: 60,
                  color: Colors.amberAccent,
                ), 
                Container(
                  width: 100,
                  height: 60,
                  color: Colors.blueAccent,
                )
              ],
            ),
             SizedBox(height: 70,),
            //Row6
            Row(
              mainAxisAlignment: .spaceEvenly,
              crossAxisAlignment: .start,
              children: [
                Container(
                  width: 100,
                  height: 60,
                  color: Colors.green,
                ), 
                Container(
                  width: 100,
                  height: 60,
                  color: Colors.amberAccent,
                ), 
                Container(
                  width: 100,
                  height: 60,
                  color: Colors.blueAccent,
                )
              ],
            ),
          ],
        ),
    );
  }
}