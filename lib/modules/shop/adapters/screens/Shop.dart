// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/kernel/themes/Colors_app.dart';
import 'package:flutter_application_1/modules/shop/adapters/screens/widgets/container_shop.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> item1 = {
      'title': 'iphone 13 1',
      'description': 'otro iphone igual al anterior',
      'initialRating': 3.5,
      'imageUri': 'assets/images/iphone1.png',
      'price': 7500.00
    };
    final Map<String, dynamic> item2 = {
      'title': 'iphone 13 2',
      'description': 'otro iphone igual al anterior',
      'initialRating': 3.5,
      'imageUri': 'assets/images/iphone2.jpg',
      'price': 7500.00
    };
    final List items = [item1, item2];
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tienda del halcon"),
          backgroundColor: ColorsApp.primaryColor,
          foregroundColor: const Color.fromARGB(255, 179, 199, 193),
          actions: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/shop/shop-cart');
              },
              child: Container(
                width: 60,
                height: 60,
                margin: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                    color: Colors.transparent, shape: BoxShape.circle),
                child: const Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
        body: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(8),
            crossAxisSpacing: 2,
            mainAxisSpacing: 16,
            crossAxisCount: 2,
            children: List.generate(items.length, (index) {
              return ContainerShop(
                  title: items[index]['title'],
                  description: items[index]['description'],
                  initialRating: items[index]['initialRating'],
                  imageUri: items[index]['imageUri'],
                  price: items[index]['price']);
            })));
  }
}
