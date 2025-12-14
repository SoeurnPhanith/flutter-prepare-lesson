import 'package:flutter/material.dart';

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        children: [
          Flexible(
            //vea ric roum tam content
            fit: FlexFit.loose,
            child: Container(color: Colors.red, child: Text("Short ma the fuck........................")),
          ),
          Flexible(
            //vea ric space 
            fit: FlexFit.tight,
            child: Container(
              color: Colors.blue,
              child: Text("This is a very very long text"),
            ),
          ),
        ],
      ),
    );
  }
}
