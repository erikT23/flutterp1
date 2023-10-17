import 'package:flutter/material.dart';
import 'package:flutter_application_1/kernel/widgets/Splash.dart';
import 'package:flutter_application_1/kernel/widgets/navigation/bottom_navigation_tab.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const Splash(title: 'Cargando'),
          '/menu': (context) => const Menu(),
        });
  }
}

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {}
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Menu'),
      ),
      bottomNavigationBar: BottomNavigationTab(
          selectedIndex: _selectedIndex, onItemTapped: _onItemTapped),
    );
  }
}
