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
        child: TextFormField(
          decoration: const InputDecoration(labelText: 'Nombre Completo:*'),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Campo Obligatorio';
            } else {
              return null;
            }
          },
        ),
      ),
    );
  }
}
