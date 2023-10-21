import 'package:flutter/material.dart';

class FirstForm extends StatelessWidget {
  const FirstForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("creacion de cuenta"),
      ),
      body: Form(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(16),
              child: TextFormField(
                decoration:
                    const InputDecoration(labelText: 'Nombre Completo:*'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Campo Obligatorio';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16),
              child: TextFormField(
                decoration:
                    const InputDecoration(labelText: 'Correo Electronico:*'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Campo Obligatorio';
                  } else {
                    return null;
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
