import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/count/adapters/screens/count.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, home: Count());
  }
}
