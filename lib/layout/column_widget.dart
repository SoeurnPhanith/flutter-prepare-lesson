import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        children: [
          //Column 1
          Column(
            mainAxisAlignment: .spaceAround,
            crossAxisAlignment: .end,
            children: [
              Container(
                width: 50,
                height: 50,
                color: Colors.black,
              ),
              Container(
                width: 50 ,
                height: 50,
                color: Colors.orange,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.tealAccent,
              )
            ],
          ),
          SizedBox(width: 50,),
          //Column 2
          Column(
            mainAxisAlignment: .start,
            crossAxisAlignment: .center,
            children: [
              Container(
                width: 50,
                height: 50,
                color: Colors.black,
              ),
              Container(
                width: 50 ,
                height: 50,
                color: Colors.orange,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.tealAccent,
              )
            ],
          ),
          SizedBox(width: 50,),
          //Column 3
          Column(
            mainAxisAlignment: .end,
            crossAxisAlignment: .center,
            children: [
              Container(
                width: 50,
                height: 50,
                color: Colors.black,
              ),
              Container(
                width: 50 ,
                height: 50,
                color: Colors.orange,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.tealAccent,
              )
            ],
          ),
          SizedBox(width: 50,),
          //Column 4
          Column(
            mainAxisAlignment: .center,
            crossAxisAlignment: .center,
            children: [
              Container(
                width: 50,
                height: 50,
                color: Colors.black,
              ),
              Container(
                width: 50 ,
                height: 50,
                color: Colors.orange,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.tealAccent,
              )
            ],
          ),
          SizedBox(width: 20,),
          //Column 6
          Column(
            mainAxisAlignment: .spaceBetween,
            crossAxisAlignment: .center,
            children: [
              Container(
                width: 50,
                height: 50,
                color: Colors.black,
              ),
              Container(
                width: 50 ,
                height: 50,
                color: Colors.orange,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.tealAccent,
              )
            ],
          ),
        ],
      ),
    );
  }
}