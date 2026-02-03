import 'package:flutter/material.dart';

class DraggableScrollWidget extends StatelessWidget {
  const DraggableScrollWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Draggable Scroll Example"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          // Background content
          Container(
            color: Colors.blue[100],
            child: const Center(
              child: Text(
                "Background Content",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),

          // DraggableScrollableSheet
          DraggableScrollableSheet(
            initialChildSize: 0.3, // initial size of sheet (30% of screen)
            minChildSize: 0.15,     // min collapsed size (20% of screen)
            maxChildSize: 1,     // max expanded size (80% of screen)
            builder: (context, scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: ListView.builder(
                  controller: scrollController, // MUST pass controller
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(Icons.star),
                      title: Text('Item ${index + 1}'),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
