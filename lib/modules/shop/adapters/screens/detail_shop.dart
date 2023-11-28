import 'package:flutter/material.dart';
import 'package:flutter_application_1/kernel/themes/Colors_app.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailShop extends StatelessWidget {
  const DetailShop({super.key});

  @override
  Widget build(BuildContext context) {
    final dynamic rawArgs = ModalRoute.of(context)!.settings.arguments;
    final Map<String, dynamic> args = (rawArgs as Map<String, dynamic>);
    final title = args['text'] ?? '';
    final description = args['description'] ?? '';
    final initialRating = args['initialRating'] ?? 0.0;
    final image = args['imageUri'] ?? 'assets/images/Logo-utez.png';
    final price = args['price'] ?? 0.0;
    double widthImage = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: ColorsApp.primaryColor,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Image.asset(image,
              width: widthImage, height: 450, fit: BoxFit.fitWidth),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                SizedBox(
                    width: 120,
                    child: Text(
                      title,
                      style:
                          const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )),
                const Spacer(),
                Text('\$ $price'),
                RatingBar.builder(
                  initialRating: initialRating,
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
                  updateOnDrag: true,
                  onRatingUpdate: (double value) {},
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            description,
            style: const TextStyle(fontSize: 12, color: Colors.black),
          )
        ],
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
            foregroundColor: ColorsApp.successColor,
            backgroundColor: Colors.white,
            side: const BorderSide(color: ColorsApp.successColor),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16))),
        child: const Text('agregar al carrito'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
