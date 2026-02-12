import 'package:flutter/material.dart';

class AppBarComponentsPart1 extends StatelessWidget {
  const AppBarComponentsPart1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Page Title',style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, color: Colors.white),),
          leading: Icon(Icons.menu, color: Colors.white, size: 29,),
          backgroundColor: Colors.purple,
          actions: [
            Icon(Icons.favorite, size: 29, color: Colors.white,), 
            SizedBox(width: 15,),
            Icon(Icons.search, size: 29, color: Colors.white,),
            SizedBox(width: 15,),
            Icon(Icons.more_vert, size: 29, color: Colors.white,),
            SizedBox(width:5,)
          ],
      ),
    );
  }
}