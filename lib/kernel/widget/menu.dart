import 'package:first_project_learningb/config/navigation/account_navigation.dart';
import 'package:first_project_learningb/config/navigation/home_navigation.dart';
import 'package:first_project_learningb/kernel/widget/custom_bottom_navigation_tab.dart';
import 'package:flutter/material.dart';


class Menu extends StatefulWidget{
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectIndex = 0; //_encapsulamiento
  final homeNavigationKey = GlobalKey<NavigatorState>();
  final accountNavigationKey = GlobalKey<NavigatorState>();
  void _onItemTapped(int index){
    setState(() {
      _selectIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectIndex,
        children: const [HomeNavigation(), AccountNavigation()],
      ),
      bottomNavigationBar: CustomBottomNavigationTab(selectedIndex: _selectIndex, onItemTapped: _onItemTapped),
    );
  }
}