import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("TRAPIR")),
      body: const Center(
        child: Text('trapir Project'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.lightGreen,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.backspace),
            label: 'Notes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.place),
            label: 'Sites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_4x4),
            label: 'Collecting Events',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pets),
            label: 'Specimens',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Statistics',
          ),
        ],
      ),
    );
  }
}
