import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Expanded Widget')),
      body: Column(
        children: [
          //Sample Expanded row 1
          Row(
            children: [
              Expanded(child: Container(color: Colors.red, height: 100)),
              Expanded(child: Container(color: Colors.blue, height: 100)),
              Expanded(child: Container(color: Colors.green, height: 100)),
            ],
          ),

          //Sample Expanded row 2
          SizedBox(height: 25),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(color: Colors.red, height: 100),
              ),
              Expanded(
                flex: 1,
                child: Container(color: Colors.blue, height: 100),
              ),
              Expanded(
                flex: 3,
                child: Container(color: Colors.green, height: 100),
              ),
            ],
          ),

          //Sample Expanded row 3
          SizedBox(height: 25),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(color: Colors.red, height: 100),
              ),
              Expanded(
                flex: 4,
                child: Container(color: Colors.blue, height: 100),
              ),
              Expanded(
                flex: 2,
                child: Container(color: Colors.green, height: 100),
              ),
            ],
          ),

          //Sample Expanded row 4
          SizedBox(height: 25),
          Row(
            children: [
              Expanded(
                flex: 4,
                child: Container(color: Colors.red, height: 100),
              ),
              Expanded(
                flex: 0,
                child: Container(color: Colors.blue, height: 100),
              ),
              Expanded(
                flex: 1,
                child: Container(color: Colors.green, height: 100),
              ),
            ],
          ),

          //Sample Expanded row 5
          SizedBox(height: 25),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(color: Colors.red, height: 100),
              ),
              Expanded(
                flex: 6,
                child: Container(color: Colors.blue, height: 100),
              ),
              Expanded(
                flex: 2,
                child: Container(color: Colors.green, height: 100),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
