import 'package:flutter/material.dart';
import 'package:flutter_application_1/kernel/widgets/Splash.dart';

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
        });
  }
}
