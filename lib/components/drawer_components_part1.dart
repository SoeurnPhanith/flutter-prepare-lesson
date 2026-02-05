import 'package:flutter/material.dart';

class DrawerComponentsPart1 extends StatelessWidget {
  const DrawerComponentsPart1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Noaya Zenin"),
              accountEmail: Text("zenin@example.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://i.pinimg.com/474x/1b/17/71/1b1771a846e3cc60b7a8f9425ecaa509.jpg",
                ),
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://i0.wp.com/anitrendz.net/news/wp-content/uploads/2025/10/jujutsu-kaisen-execution-naoya-zenin-character-visual-scaled-e1761254030125.jpg"
                  ),
                  fit: BoxFit.cover, // cover whole header
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
