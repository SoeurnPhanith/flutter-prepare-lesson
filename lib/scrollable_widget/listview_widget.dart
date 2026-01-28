import 'package:flutter/material.dart';

class ListviewWidget extends StatelessWidget {
  const ListviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),
      body: Column(
        children: [
          // ListView 1 : Build profile like messenger
          Container(
            width: double.infinity,
            height: 100,
            child: ListView(
              // physics: ClampingScrollPhysics(), // android scroll style
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(), // IOS style
              padding: EdgeInsets.only(left: 7),
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6rRF6-0-2rnTUsLOLlrxm9SCWX1ZGYjciRw&s',
                    fit: BoxFit.cover,
                    width: 100,
                  ),
                ),
                SizedBox(width: 8),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLu4ZE4JJ7hDdoG9KaH6iFcLHHUJBYEBR2KQ&s',
                    fit: BoxFit.cover,
                    width: 100,
                  ),
                ),
                SizedBox(width: 8),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(
                    'https://ih1.redbubble.net/image.5568953504.0392/flat,750x1000,075,t.jpg',
                    fit: BoxFit.cover,
                    width: 100,
                  ),
                ),
                SizedBox(width: 8),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(
                    'https://ih1.redbubble.net/image.5601731848.0341/st,small,507x507-pad,600x600,f8f8f8.u1.jpg',
                    fit: BoxFit.cover,
                    width: 100,
                  ),
                ),
                SizedBox(width: 8),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(
                    'https://i.pinimg.com/564x/49/18/7e/49187e2e96fd1d54e631a008b1a981a4.jpg',
                    fit: BoxFit.cover,
                    width: 100,
                  ),
                ),
                SizedBox(width: 8),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6rRF6-0-2rnTUsLOLlrxm9SCWX1ZGYjciRw&s',
                    fit: BoxFit.cover,
                    width: 100,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 30),

          // ListView 2 : vertical scroll
          Expanded(
            child: Container(
              width: 200,
              height: 200,
              child: ListView(
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(), // use IOS scroll style
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      'https://i.pinimg.com/736x/52/31/cf/5231cfdb656420eb626ebb648f64337f.jpg',
                      fit: BoxFit.cover,
                      width: 200,
                      height: 200,
                    ),
                  ),
                  SizedBox(height: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      'https://i.pinimg.com/564x/49/18/7e/49187e2e96fd1d54e631a008b1a981a4.jpg',
                      fit: BoxFit.cover,
                      width: 200,
                      height: 200,
                    ),
                  ),
                  SizedBox(height: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      'https://i.pinimg.com/736x/cb/54/e2/cb54e2aecbd414458859f99f16e5121d.jpg',
                      fit: BoxFit.cover,
                      width: 200,
                      height: 200,
                    ),
                  ),
                  SizedBox(height: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      'https://i.pinimg.com/736x/eb/bc/66/ebbc6658919de4f31229384866e31038.jpg',
                      fit: BoxFit.cover,
                      width: 200,
                      height: 200,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

