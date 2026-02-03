import 'package:flutter/material.dart';

class NestedScrollViewWidgetPart2 extends StatelessWidget {
  const NestedScrollViewWidgetPart2({super.key});

  @override
  Widget build(BuildContext context) {
        return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                title: const Text("Nested + Grid"),
                pinned: true,
                floating: true,
                expandedHeight: 120,
                bottom: const TabBar(
                  tabs: [
                    Tab(text: "Photos"),
                    Tab(text: "Videos"),
                  ],
                ),
                flexibleSpace: FlexibleSpaceBar(background: Container(color: Colors.amberAccent,),),
              ),
            ];
          },
          body: TabBarView(
            children: [
              buildGrid(),
              buildGrid(),
            ],
          ),
        ),
      ),
    );
  }


  //custom widget
   Widget buildGrid() {
    return GridView.builder(
      padding: EdgeInsets.zero,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
      ),
      itemCount: 20,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            color: Colors.blue[200],
            child: Center(child: Text("Item $index")),
          ),
        );
      },
    );
  }
}

