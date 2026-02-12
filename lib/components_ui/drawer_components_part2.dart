import 'package:flutter/material.dart';

class DrawerComponentsPart2 extends StatelessWidget {
  const DrawerComponentsPart2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("EndDrawer Demo")),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // DrawerHeader(
            //   decoration: BoxDecoration(color: Colors.blue),
            //   child: Text(
            //     "Right Menu",
            //     style: TextStyle(color: Colors.white, fontSize: 24),
            //   ),
            // ),
            UserAccountsDrawerHeader(
              accountName: Text('Noaya Zenin'),
              accountEmail: Text('NoayaZenin168@gmail.com'),
              currentAccountPicture: ClipRRect(
                child: Image.network(
                  'https://i.pinimg.com/474x/1b/17/71/1b1771a846e3cc60b7a8f9425ecaa509.jpg',
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadiusGeometry.circular(50),
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://i0.wp.com/anitrendz.net/news/wp-content/uploads/2025/10/jujutsu-kaisen-execution-naoya-zenin-character-visual-scaled-e1761254030125.jpg",
                  ),
                  fit: BoxFit.cover, // cover whole header
                ),
              ),
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () => Navigator.pop(context), // close endDrawer
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
      body: Center(child: Text("Main Content")),
    );
  }
}
