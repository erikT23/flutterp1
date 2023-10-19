import 'package:flutter/material.dart';
import 'package:flutter_application_1/kernel/themes/Colors_app.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Acerca de nosotros"),
        ),
        body: Row(
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 32, left: 12),
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  color: ColorsApp.primaryColor,
                  child: const Text("Erik Tapia"),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 32, left: 12),
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  color: Colors.black26,
                  child: const Text("Erik Tapia"),
                ),
              ],
            ),
          ],
        ));
  }
}
