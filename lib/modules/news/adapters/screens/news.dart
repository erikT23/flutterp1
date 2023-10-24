import 'package:flutter/material.dart';
import 'package:flutter_application_1/kernel/themes/Colors_app.dart';
import 'package:flutter_application_1/kernel/widgets/custom/custom_carousel.dart';

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
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 16),
        child: const CustomCarousel(
          carouselHeight: 300,
          itemList: [FirstSection(), SecondSection(), ThirdSection()],
        ),
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
            fit: BoxFit.fitWidth,
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

class SecondSection extends StatelessWidget {
  const SecondSection({super.key});

  @override
  Widget build(BuildContext context) {
    double widthImage = MediaQuery.of(context).size.width;

    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/images/mentarios.png',
            width: widthImage,
            height: 120,
            fit: BoxFit.fitWidth,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "El profe esta en reunion",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "5 comentarios",
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ThirdSection extends StatelessWidget {
  const ThirdSection({super.key});

  @override
  Widget build(BuildContext context) {
    double widthImage = MediaQuery.of(context).size.width;

    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/images/audi.png',
            width: widthImage,
            height: 120,
            fit: BoxFit.fitWidth,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Territorio de calidad",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "sin aire medio cuatrimestre pero con auditorio nuevo",
              ),
            ),
          )
        ],
      ),
    );
  }
}
