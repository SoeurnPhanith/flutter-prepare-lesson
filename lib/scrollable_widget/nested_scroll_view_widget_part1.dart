import 'package:flutter/material.dart';

class NestedScrollViewWidgetPart1 extends StatelessWidget {
  const NestedScrollViewWidgetPart1({super.key});

  //NestedScrollView is a scrolling view inside of which can be nested other scrolling
  //with their scroll position being intrinsically liked
  //NestedScrollView is actaully similar CustomScrollView
  //But CustomScrollView is combine multiple sliver children
  //while NestedScrollView can be other children

  //in the common case, NestedScrollView is used to have a flexible sliverAppBar containing to TabBar in the header
  //and a TabBarView in the body

  @override
  Widget build(BuildContext context) {
    //need defaultTabController to hold of TabBarView
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                title: Text('Itachi Uchiha'),
                expandedHeight: 125,
                bottom: TabBar(
                  tabs: [
                    Text('Home',style: TextStyle(fontSize: 20, color: Colors.black) ),
                    Text('Reel',style: TextStyle(fontSize: 20, color: Colors.black) ),
                    Text('Notification',style: TextStyle(fontSize: 20, color: Colors.black) ),
                  ],
                ),
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.network(
                    'https://images3.alphacoders.com/137/thumb-1920-1375922.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(children: [
            buildList('Home'), 
            buildList('Reel'), 
            buildList('Notification')
          ]),
        ),
      ),
    );
  }


  //build a widget
  Widget buildList(String title) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 20,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text("$title Item $index"),
        );
      },
    );
  }
}
