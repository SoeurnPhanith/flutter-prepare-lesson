import 'package:flutter/material.dart';

class NestedListView extends StatelessWidget {
  const NestedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nested ListView in Container'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          // First container with vertical inner list
          Container(
            height: 200, // fixed height for inner scroll
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: .horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 150,
                    height: 200,
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    padding: const EdgeInsets.all(8),
                    color: Colors.blue[300],
                    child: Text(
                      "Item ${index + 1}",
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 16),
          // Second container
          Container(
            height: 200,
            color: Colors.green[200],
            child: const Center(child: Text("Second Container")),
          ),
          const SizedBox(height: 16),

          // Third container
          Container(
            height: 200,
            color: Colors.orange[200],
            child: const Center(child: Text("Third Container")),
          ),
          const SizedBox(height: 16),

          // Fourth container
          Container(
            height: 200,
            color: Colors.red[200],
            child: const Center(child: Text("Fourth Container")),
          ),
        ],
      ),
    );
  }
}

