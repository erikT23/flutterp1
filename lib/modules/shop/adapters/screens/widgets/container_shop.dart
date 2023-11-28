
import 'package:flutter/material.dart';
import 'package:flutter_application_1/kernel/themes/Colors_app.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ContainerShop extends StatelessWidget {
  final String title;
  final String description;
  final double initialRating;
  final String imageUri;
  final double price;
  const ContainerShop(
      {super.key,
      required this.title,
      required this.description,
      required this.initialRating,
      required this.imageUri,
      required this.price});

  @override
  Widget build(BuildContext context) {
    double widthImage = MediaQuery.of(context).size.width;

    return Card(
      elevation: 5,
      child: Column(children: [
        Image.asset(
          imageUri,
          width: widthImage,
          height: 75,
          fit: BoxFit.fitWidth,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const SizedBox(
                width: 64,
                child: Text(
                  "Iphone pro Max 15",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w900),
                ),
              ),
              const Spacer(),
              Column(
                children: [
                  Text(
                    '/$price',
                    style: const TextStyle(color: Colors.black54, fontSize: 8),
                  ),
                  RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 8,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ],
              )
            ],
          ),
        ),
        const Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              "Igual al del año pasado pero mas caro",
              style: TextStyle(color: Colors.black54, fontSize: 8),
            )),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/shop/detail-shop', arguments: {
              'title': title,
              'description': description,
              'initialRating': initialRating,
              'imageUri': imageUri,
              'price': price
            });
          },
          style: OutlinedButton.styleFrom(
              foregroundColor: ColorsApp.successColor,
              backgroundColor: Colors.white,
              side: const BorderSide(color: ColorsApp.successColor),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16))),
          child: const Text("Ver mas"),
        )
      ]),
    );
  }
}
