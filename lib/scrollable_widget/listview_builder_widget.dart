import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListviewBuilderWidget extends StatelessWidget {
  const ListviewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Information')),
      body: SafeArea(
        child: Column(
          children: [
            //ListView.Builder horizantal
            Container(
              height: 100,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: .horizontal,
                itemCount: imageList.length,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.all(8),
                        height: 100,
                        width: 80,
                        child: ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(100),
                          child: Image.network(
                            imageList[index].image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 70,
                        left: 70,
                        child: Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),

            //ListView.Builder vertical
            SizedBox(height: 30),
            Container(
              width: 400,
              height: 690,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadiusGeometry.circular(100),
                        child: Image.network(
                          'https://static0.srcdn.com/wordpress/wp-content/uploads/2019/01/cover-1.jpg?w=1200&h=628&fit=crop',
                          width: 55,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        'Itachi Uchiha',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text('Itachi sent you a message.'),
                      trailing: Column(
                        children: [
                          SizedBox(height: 33,),
                          Text('active now.'),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageUrl {
  String image;

  ImageUrl({required this.image});
}

List<ImageUrl> imageList = [
  ImageUrl(
    image:
        'https://www.looper.com/img/gallery/is-narutos-itachi-a-god-what-shinto-beliefs-can-tell-us/l-intro-1689400716.jpg',
  ),
  ImageUrl(
    image:
        'https://static0.srcdn.com/wordpress/wp-content/uploads/2017/08/Itachi-Uchiha-Naruto.jpg?q=50&fit=crop&w=825&dpr=1.5',
  ),
  ImageUrl(
    image:
        'https://culturedvultures.com/wp-content/uploads/2023/01/Itachi-Uchiha.jpg',
  ),
  ImageUrl(
    image:
        'https://static0.gamerantimages.com/wordpress/wp-content/uploads/2022/12/itachi-uchiha-naruto.jpg?w=1600&h=900&fit=crop',
  ),
  ImageUrl(
    image:
        'https://mir-s3-cdn-cf.behance.net/projects/404/10c3c4234239503.Y3JvcCwzMDAwLDIzNDYsMCwzMjY.png',
  ),
  ImageUrl(
    image:
        'https://i.ytimg.com/vi/K-Br5fvBt3k/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLBpE--YKS6WofhQej9Z72uGl_ey3g',
  ),
];
