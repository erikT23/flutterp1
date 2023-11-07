import 'package:flutter/material.dart';
import 'package:flutter_application_1/kernel/themes/Colors_app.dart';
import 'package:flutter_application_1/modules/auth/adapters/screens/widgets/list_users.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final Map item = {"name": "Erik Tapia Guzman"};
    final Map item2 = {"name": "Dulce Anaid Contreras"};
    final List items = [item, item2];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Usuarios"),
        backgroundColor: ColorsApp.primaryColor,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListUsers(
                item: items[index],
              );
            }),
      ),
    );
  }
}
