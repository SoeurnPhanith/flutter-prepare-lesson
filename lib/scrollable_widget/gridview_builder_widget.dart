import 'package:flutter/material.dart';

class GridviewBuilderWidget extends StatelessWidget {
  const GridviewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GridView builder')),
      body: Column(
        children: [
          //banner
          Container(
            height: 300,
            child: ListView.builder(
              itemCount: bannerList.length,
              scrollDirection: .horizontal,
              itemBuilder: (context, index) {
                final item = bannerList[index].image;
                return ClipRRect(
                  child: Image.network('${item}', fit: BoxFit.cover),
                );
              },
            ),
          ),

          const SizedBox(height: 7),
          //data from gridView
          Container(
            width: double.infinity,
            height: 510,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 15,
                childAspectRatio: 0.75,
              ),
              itemCount: 7,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    width: 170,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1,
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 200,
                          child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZv39eMwNH9XFXORydPlyolIZjemFzCLBEng&s',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          'Ah kdor Tin',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          height: 45,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text(
                              'Pick hero',
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

//Banner  list
class Banner {
  String image;

  Banner({required this.image});
}

List<Banner> bannerList = [
  Banner(
    image:
        'https://static01.nyt.com/images/2020/01/28/multimedia/28xp-memekid3/28cp-memekid3-superJumbo.jpg',
  ),
  Banner(
    image:
        'https://www.meowbox.com/cdn/shop/articles/Screen_Shot_2024-03-15_at_10.53.41_AM.png?v=1710525250',
  ),
];
