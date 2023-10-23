import 'package:flutter/material.dart';

class CustomBottomNavigationTab extends StatelessWidget{
  final int selectedIndex;
  final Function(int) onItemTapped;
  const CustomBottomNavigationTab({Key? key, required this.selectedIndex, required this.onItemTapped});
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const <BottomNavigationBarItem> [
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Iniciar Sesiòn'),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home')
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.blueAccent,
      onTap: onItemTapped,
    );
  }
}