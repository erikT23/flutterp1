import 'package:flutter/material.dart';

class Count2 extends StatefulWidget {
  const Count2({super.key});

  @override
  State<Count2> createState() => _Count2State();
}

List<Color> colores = [
  Colors.black,
  Colors.amber,
  Colors.blue,
  Colors.brown,
  Colors.green,
  Colors.black,
  Colors.amber,
  Colors.blue,
  Colors.brown,
  Colors.green,
  Colors.black,
  Colors.amber,
  Colors.blue,
  Colors.brown,
  Colors.green
];
int number = 0;

class _Count2State extends State<Count2> {
  @override
  Widget build(BuildContext context) {
    TextStyle fontTouch = TextStyle(fontSize: 32.0, color: colores[number]);
    return Scaffold(
        appBar: AppBar(
          title: Text("P1 Flutter", style: fontTouch),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Numero de toques", style: fontTouch),
              Text(
                "$number",
                style: fontTouch,
              )
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              if (number > colores.length - 1) {
                number = 0;
              }
              number++;
              print("hola,$number");
              setState(() {});
            },
            child: const Icon(Icons.add)));
  }
}
