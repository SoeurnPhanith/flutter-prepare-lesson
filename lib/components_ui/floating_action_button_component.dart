import 'package:flutter/material.dart';

class FloatingActionButtonComponent extends StatelessWidget {
  const FloatingActionButtonComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Floating Action Button Example"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "Press the button below",
          style: TextStyle(fontSize: 18),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  
        },
        backgroundColor: const Color.fromARGB(255, 225, 151, 32),
        child: const Icon(Icons.add, color: Colors.white,),
        tooltip: "Add Item",
        elevation: 6,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
