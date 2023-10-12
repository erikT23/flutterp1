import 'package:flutter/material.dart';

class Count extends StatelessWidget {
  const Count({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle fontTouch =
        const TextStyle(fontSize: 32.0, color: Colors.deepPurple);
    return Scaffold(
      appBar: AppBar(title: const Text("Contador")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Numero de toques", style: fontTouch),
            Text(
              "0",
              style: fontTouch,
            )
          ],
        ),
      ),
    );
  }
}
