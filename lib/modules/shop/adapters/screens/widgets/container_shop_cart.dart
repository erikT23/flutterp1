import 'package:flutter/material.dart';
import 'package:flutter_application_1/kernel/themes/Colors_app.dart';

class ContainerShopCart extends StatelessWidget {
  const ContainerShopCart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Card(
        elevation: 5,
        child: Row(
          children: [
            Image.asset(
              'assets/images/iphone1.png',
              width: 100,
              height: 100,
            ),
            const SizedBox(
              width: 8,
            ),
            const SizedBox(
              width: 120,
              child: Column(
                children: [
                  Text(
                    'Iphone 15 pro max',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '\$ 22.000',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: ColorsApp.successColor),
                    ),
                  ),
                  Text(
                    'Iphone 15 pro max bien caro',
                    style: TextStyle(color: Colors.black45, fontSize: 14),
                  )
                ],
              ),
            ),
            const Spacer(),
            Container(
              margin: const EdgeInsets.only(right: 5),
              child: ElevatedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.red,
                    backgroundColor: Colors.white,
                    side: const BorderSide(color: Colors.red),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16))),
                child: const Text('Eliminar del carrito'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
