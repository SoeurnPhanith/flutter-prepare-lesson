import 'package:flutter/material.dart';

class GridviewWidget extends StatelessWidget {
  const GridviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sigma App'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity, // give full height
        padding: EdgeInsets.all(8),
        child: GridView(
          scrollDirection: .vertical,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,      // 2 columns
            childAspectRatio: 0.8,  // width / height ratio
            mainAxisSpacing: 15,    // vertical spacing
            crossAxisSpacing: 10,   // horizontal spacing
            
          ),
          children: [
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12), // round image corners
                  child: Image.network(
                    'https://i.pinimg.com/736x/bb/d2/2f/bbd22f6b6258a773da63e3b2207996a9.jpg',
                    fit: BoxFit.cover,
                    width: 150,
                    height: 150,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Sigma Cat 1",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            // Add more items here
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4nyIcMCAbVYSkV8z_rexjMFdRLA5DCenaIg&s',
                    fit: BoxFit.cover,
                    width: 150,
                    height: 150,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Sigma Cat 2",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            // Add more items here
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLUEeTU99gq4Yvnt0Kw2BI2Muh1E04MPPTGA&s',
                    fit: BoxFit.cover,
                    width: 150,
                    height: 150,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Sigma Cat 3",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            // Add more items here
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWy9dNqjBRPyd70uW8bBd8xTZIa5utX1pVVA&s',
                    fit: BoxFit.cover,
                    width: 150,
                    height: 150,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Sigma Cat 4",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            // Add more items here
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    'https://shapes.inc/api/public/avatar/sigmabetacat',
                    fit: BoxFit.cover,
                    width: 150,
                    height: 150,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Sigma Cat 5",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            // Add more items here
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    'https://pbs.twimg.com/profile_images/1913836267651129344/XO0SfB8p_400x400.jpg',
                    fit: BoxFit.cover,
                    width: 150,
                    height: 150,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Sigma Cat 6",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            // Add more items here
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuJ5NnZjwA8pK4DRRPHaLtYAZ4mpxx_VPwcw&s',
                    width: 150,
                    height: 150,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Sigma Cat 7",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            // Add more items here
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    'https://ih1.redbubble.net/image.5426125015.1205/tst,small,845x845-pad,1000x1000,f8f8f8.jpg',
                    fit: BoxFit.cover,
                    width: 150,
                    height: 150,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Sigma Cat 8",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            // Add more items here
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    'https://media.tenor.com/y62aZV5FwxYAAAAe/sigma-sigma-cat.png',
                    fit: BoxFit.cover,
                    width: 150,
                    height: 150,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Sigma Cat 9",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            // Add more items here
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    'https://i.pinimg.com/736x/88/96/e8/8896e857fb1ebb5945d5e91f42ade487.jpg',
                    fit: BoxFit.cover,
                    width: 150,
                    height: 150,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Sigma Cat 10",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
