import 'package:flutter/material.dart';

class AppBarComponentsPart2 extends StatelessWidget {
  const AppBarComponentsPart2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('FAHHHHHHHHHH!', style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.w600),),
      centerTitle: true,
      backgroundColor: Colors.deepPurple,
      leading: Icon(Icons.menu, size: 30, color: Colors.white,),
      actions: [Icon(Icons.notifications_on, size: 30, color: Colors.white,), SizedBox(width: 10,)],
      bottom: PreferredSize(preferredSize: Size.fromHeight(110),
       child: Padding(
         padding: const EdgeInsets.only(bottom: 10.0, top: 5),
         child: Row(
          mainAxisAlignment: .center,
          crossAxisAlignment: .start,
          children: [
              ClipOval(
                child: Image.network(
                  'https://i.pinimg.com/474x/1b/17/71/1b1771a846e3cc60b7a8f9425ecaa509.jpg',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 12,),
              Column(
                crossAxisAlignment: .start,
                children: [
                  Text('Noaya Zenin', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700, color: Colors.white),),
                  Text('noaya168@gmail.com', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400,color: Colors.white),),
                  Text('+855 312172697', style: TextStyle(color: Colors.white),)
                ],
              )
          ],
               ),
       )),
    ));
  }
}
