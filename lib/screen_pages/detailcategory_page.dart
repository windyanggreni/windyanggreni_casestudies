import 'package:flutter/material.dart';
import 'package:windyanggreni_casestudies/screen_pages/ordersuccess_page.dart';

const Color customColor = Color(0xFF0F3759);

class DetailCategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sugar Free Gold Low Calories',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Etiam mollis metus non purus',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 16),
            Container(
              height: 200,
              width: double.infinity,
              child: Image.asset(
                'images/prd2.png',
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Text(
                  'Rp 56.000',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  label: Text('Add to cart'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.green,
                  ),
                ),
              ],
            ),
            Text(
              'Etiam mollis',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 16),
            Divider(),
            SizedBox(height: 16),
            Text(
              'Package size',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                _buildPackageCard('Rp 252.000', '500 Pellets', true),
                _buildPackageCard('Rp 100.000', '110 Pellets', false),
                _buildPackageCard('Rp 160.000', '300 Pellets', false),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Product Details',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Interdum et malesuada fames ac ante ipsum primis\nin faucibus. Morbi ut nisi odio. Nulla facilisi \nNunc risus massa, gravida id egestas a, pretium vel \ntellus. Praesent feugiat diam sit amet pulvinar \nfinibus. Etiam et nisi aliquet, accumsan nisi sit.',
            ),
            SizedBox(height: 16),
            Text(
              'Rating and Reviews',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '4.4',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 42,
                ),
              ],
            ),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '923 Ratings \nand 257 Reviews',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Text(
                  'Lorem Hoffman',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  '05 August 2024',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 18,
                ),
                Text(
                  '4.2',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Interdum et malesuada fames ac ante ipsum primis \nin faucibus. Morbi ut nisi odio. Nulla facilisi \nNunc risus massa, gravida id egestas ',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ],
            ),
            SizedBox(height: 60),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderSuccessPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: customColor,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                elevation: 1,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 20),
                  Text(
                    'GO TO CART',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPackageCard(String price, String details, bool isSelected) {
    return Card(
      elevation: isSelected ? 4.0 : 2.0,
      color: isSelected ? Colors.grey.shade300 : Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        side: BorderSide(
          color: isSelected ? Colors.green : Colors.white,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              price,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Text(
              details,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
