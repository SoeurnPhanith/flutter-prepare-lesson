import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewWidget extends StatefulWidget {
  const PageViewWidget({super.key});

  @override
  State<PageViewWidget> createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page View'),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 700,
            child: PageView.builder(
              controller: _pageController,
              itemCount: pageViewList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Image
                      Container(
                        width: double.infinity,
                        height: 300,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            pageViewList[index].imageUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
            
                      const SizedBox(height: 20),
            
                      // Description Text
                      Text(
                        pageViewList[index].desc,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                          height: 1.5,
                        ),
                      ),
            
                      const SizedBox(height: 30),
            
                      // Next Button
                      ElevatedButton(
                        onPressed: () {
                          if (index < pageViewList.length - 1) {
                            _pageController.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut,
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          index == pageViewList.length - 1
                              ? 'Done'
                              : 'Next',
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          //dot 
          SmoothPageIndicator(
            controller: _pageController,
            count: pageViewList.length,
            effect: const WormEffect(
              dotHeight: 7,
              dotWidth: 20,
              spacing: 8,
              activeDotColor: Color(0xFF282828),
            ),
          )
        ],
      ),
    );
  }
}



class PageViewData {
  String imageUrl;
  String desc;

  PageViewData({required this.desc, required this.imageUrl});
}

List<PageViewData> pageViewList = [
  PageViewData(
    desc:
        'PageView is a Flutter widget that allows users to scroll through multiple pages horizontally or vertically. It is commonly used for onboarding screens, image sliders, and tutorials.',
    imageUrl:
        'https://thumbs.dreamstime.com/b/children-making-money-young-entrepreneur-kids-selling-lemonade-their-first-private-business-flat-style-cartoon-vector-61033642.jpg',
  ),
  PageViewData(
    desc:
        'PageView provides smooth swipe gestures and supports page snapping. It can be controlled using a PageController for better navigation.',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWzonpVkwnhbefvdaaMd3OAuuL5pPMrqdnKQ&s',
  ),
];


//using library smooth_page_indicator to having dot when scroll