import 'package:flutter/material.dart';
import 'package:flutter_application_1/kernel/themes/Colors_app.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsApp.primaryColor,
        title: const Text(
          "Noticias",
        ),
      ),
      body: const Center(
        child: FirstSection(),
      ),
    );
  }
}

class FirstSection extends StatelessWidget {
  const FirstSection({super.key});

  @override
  Widget build(BuildContext context) {
    double widthImage = MediaQuery.of(context).size.width;

    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/images/Logo-utez.png',
            width: widthImage,
            height: 120,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Regresa el aire acondicionado",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Despues de mucho tiempo ya hay aire",
              ),
            ),
          )
        ],
      ),
    );
  }
}
