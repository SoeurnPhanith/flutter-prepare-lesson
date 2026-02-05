import 'package:flutter/material.dart';

class ButtonNavigationBarComponent extends StatefulWidget {
  const ButtonNavigationBarComponent({super.key});

  @override
  State<ButtonNavigationBarComponent> createState() =>
      _ButtonNavigationBarComponentState();
}

class _ButtonNavigationBarComponentState
    extends State<ButtonNavigationBarComponent> {

  int _currentIndex = 0;

  final List<Widget> _pages = [
    Center(child: Text("Home Page", style: TextStyle(fontSize: 24))),
    Center(child: Text("QR Page", style: TextStyle(fontSize: 24))),
    Center(child: Text("Account Page", style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('buttonNavigationBar'),
        backgroundColor: Colors.purple,
      ),

      //  change page here
      body: _pages[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code),label: "QR",),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Account",),
        ],
        //show item selected
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color.fromARGB(179, 9, 5, 5),
        backgroundColor: Colors.purple,
        selectedFontSize: 16,
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
