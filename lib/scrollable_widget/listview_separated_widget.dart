import 'package:flutter/material.dart';

class ListviewSeparatedWidget extends StatelessWidget {
  const ListviewSeparatedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Horizontal & Vertical ListView.separated')),
      body: Column(
        children: [
          // Horizontal scroll listView.Separated
          Padding(
            padding: const EdgeInsets.all(12),
            child: SizedBox(
              height: 110, // Must set height for horizontal ListView
              child: ListView.separated(
                scrollDirection: Axis.horizontal, 
                itemCount: 7,
                itemBuilder: (context, index) {
                  return Container(
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person, color: Colors.white, size: 40),
                        const SizedBox(height: 8),
                        Text(
                          'User $index',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 20); // Spacing between items
                },
              ),
            ),
          ),


          // Vertical scroll listView.Separated
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: ListView.separated(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    height: 100,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.person, color: Colors.orangeAccent),
                        ),
                        const SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'User $index',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'user$index@email.com',
                              style: const TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 15); // Vertical spacing
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
