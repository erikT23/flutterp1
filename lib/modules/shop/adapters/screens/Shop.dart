import 'package:flutter/material.dart';
import 'package:flutter_application_1/kernel/themes/Colors_app.dart';
import 'package:flutter_application_1/modules/shop/adapters/screens/widgets/container_shop.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("nido del halcon"),
          backgroundColor: ColorsApp.primaryColor,
          foregroundColor: ColorsApp.successColor,
        ),
        body: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(8),
            crossAxisSpacing: 2,
            mainAxisSpacing: 16,
            crossAxisCount: 2,
            children: const <Widget>[
              ContainerShop(),
              ContainerShop(),
              ContainerShop()
            ]));
  }
}
