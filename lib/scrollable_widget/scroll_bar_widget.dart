import 'package:flutter/material.dart';

class ScrollBarWidget extends StatelessWidget {
  ScrollBarWidget({super.key});

  final ScrollController _scrollContrller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('ScrollBar + ListView'), centerTitle: true, backgroundColor: Colors.white,),
      body: Scrollbar(
        //need ScrollBarController
        controller: _scrollContrller,
        thumbVisibility: true, //always show
        interactive: true,
       // trackVisibility: true,
        thickness: 7,
        scrollbarOrientation: ScrollbarOrientation.right,
        radius: const Radius.circular(10),
        child: ListView.builder(
          //dermby oy scrollBar controll listview when toch it
          controller: _scrollContrller,
          primary: false,
          itemCount: 100,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Item ${index}'),
            );
        }),
      ),
    );
  }
}
