import 'package:flutter/material.dart';
import 'sora.dart';
import 'hizb.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int currentIndex = 0;
  final screens = [
    const Sora(),
    const Hizb(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
        floatingActionButton: FloatingActionButton.small(
          foregroundColor: const Color.fromARGB(255, 214, 119, 58),
          backgroundColor: const Color.fromARGB(120, 255, 255, 255),
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.home),
      ),
      bottomNavigationBar: BottomNavigationBar(
        
        onTap: (index) => setState(() => currentIndex = index),
        currentIndex: currentIndex,
        selectedItemColor: const Color.fromARGB(255, 214, 119, 58),
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'سور',
          ),
          BottomNavigationBarItem(
            
            icon: Icon(Icons.line_style),
            label: 'احزاب',
          ),
        ],
      ),
    
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
