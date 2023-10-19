import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/home/adapters/screens/about.dart';
import 'package:flutter_application_1/modules/home/adapters/screens/home.dart';

class Home_stack extends StatelessWidget {
  const Home_stack({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => const Home(),
        '/home/about': (context) => const About()
      },
    );
  }
}
