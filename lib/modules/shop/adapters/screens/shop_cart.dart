import 'package:flutter/material.dart';
import 'package:flutter_application_1/kernel/themes/Colors_app.dart';
import 'package:flutter_application_1/modules/shop/adapters/screens/widgets/container_shop_cart.dart';

class ShopCart extends StatelessWidget {
  const ShopCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Carrito de compras'),
          backgroundColor: ColorsApp.primaryColor,
          foregroundColor: Colors.white,
        ),
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: ContainerShopCart(),
        ));
  }
}
