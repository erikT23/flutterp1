import 'package:flutter/material.dart';
import 'package:flutter_application_1/kernel/themes/Colors_app.dart';

class BottomNavigationTab extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;
  const BottomNavigationTab(
      {super.key, required this.selectedIndex, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings), label: 'Configuracion'),
        BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: 'Noticias'),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: ColorsApp.primaryColor,
      unselectedItemColor: ColorsApp.successColor,
      onTap: onItemTapped,
    );
  }
}
