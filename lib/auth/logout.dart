import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';

void main() {
  runApp(MaterialApp(
    home: ProductListScreen(),
  ));
}

class ProductListScreen extends StatefulWidget {
  @override
  _ProductListScreenState createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  String selectedCategory = 'All';
  String selectedSubCategory = 'All';

  List<String> categories = ['All', 'Category 1', 'Category 2', 'Category 3'];
  List<String> subCategories = ['All', 'SubCategory 1', 'SubCategory 2', 'SubCategory 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('Product List', style: TextStyle(color: Colors.white)),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.only(right: 12),
            icon: Icon(
              Icons.shopping_cart_outlined, color: Colors.white, size: 25,),
            onPressed: () {
              // Add your onPressed functionality here
            },
          ),
        ],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: selectedCategory,
                    items: categories.map((String category) {
                      return DropdownMenuItem<String>(
                        value: category,
                        child: Text(category),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        selectedCategory = newValue!;
                      });
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: selectedSubCategory,
                    items: subCategories.map((String subCategory) {
                      return DropdownMenuItem<String>(
                        value: subCategory,
                        child: Text(subCategory),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        selectedSubCategory = newValue!;
                      });
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search here...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: 1, // Replace with actual item count
                itemBuilder: (context, index) {
                  return ProductCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatefulWidget {
  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  int itemCount = 10;

  void increment() {
    setState(() {
      itemCount++;
    });
  }

  void decrement() {
    setState(() {
      if (itemCount > 0) itemCount--;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> imgList = [
      'https://cdn.thewirecutter.com/wp-content/media/2023/10/smartwatches-204'
          '8px-3x2-1.jpg?auto=webp&quality=75&crop=3:2&width=1024',
      'https://www.bettervision.in/cdn/shop/products/8_de53923e-fb80-4646-a9eb-79fd9ebf94cf.jpg?v=1650973688',
      'https://cdn.thewirecutter.com/wp-content/media/2023/10/smartwatches-204'
          '8px-3x2-1.jpg?auto=webp&quality=75&crop=3:2&width=1024',
    ];

    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.9,
              ),
              items: imgList.map((item) => Center(
                child: InstaImageViewer(
                  disposeLevel: DisposeLevel.medium,
                  child: Image.network(
                    item,
                    fit: BoxFit.cover,
                    width: 1000,
                  ),
                ),
              )).toList(),
            ),
            SizedBox(height: 8),
            Text(
              '1.5mm Cutter for Dolphin, Panda, Condor',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 4),
            Text(
              '1.5mm',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '₹ 790.00',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: decrement,
                      icon: Icon(Icons.remove, color: Colors.red),
                    ),
                    Text('$itemCount'),
                    IconButton(
                      onPressed: increment,
                      icon: Icon(Icons.add, color: Colors.green),
                    ),
                    SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: () {
                        // Add to cart functionality
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text('Add'),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
