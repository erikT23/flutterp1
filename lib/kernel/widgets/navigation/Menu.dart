import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/navigation/home_stack.dart';
import 'package:flutter_application_1/config/navigation/news_stack.dart';
import 'package:flutter_application_1/kernel/widgets/navigation/Bottom_navigation_tab.dart';
import 'package:flutter_application_1/modules/auth/adapters/screens/profile.dart';
import 'package:flutter_application_1/modules/news/adapters/screens/news.dart';
import 'package:flutter_application_1/modules/settings/adapters/screens/Settings.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: const [Home_stack(), Profile(), Settings(), NewsStack()],
      ),
      bottomNavigationBar: BottomNavigationTab(
          selectedIndex: _selectedIndex, onItemTapped: _onItemTapped),
    );
  }
}
