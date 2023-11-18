import 'package:flutter/material.dart';
import 'package:flutter_application_1/kernel/widgets/Splash.dart';
import 'package:flutter_application_1/modules/shop/adapters/screens/detail_shop.dart';
import 'package:flutter_application_1/modules/shop/adapters/screens/shop_cart.dart';

import 'kernel/widgets/navigation/Menu.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const Splash(title: 'Cargando'),
          '/menu': (context) => const Menu(),
          '/shop/detail-shop': (context) => const DetailShop(),
          '/shop/shop-cart': (context) => const ShopCart()
        });
  }
}
