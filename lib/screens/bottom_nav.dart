import 'package:flutter/material.dart';
import 'package:project_3/screens/home.dart';

class BottomNavigationExample extends StatefulWidget {
  const BottomNavigationExample({Key? key}) : super(key: key);

  @override
  _BottomNavigationExampleState createState() =>
      _BottomNavigationExampleState();
}

class _BottomNavigationExampleState extends State<BottomNavigationExample> {
  var _index = 0;
  var _screens = [
    Text("Home"),
    Text("Page 2"),
    HomeScreen(),
  ];

  _changeIndex(index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _screens[_index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _changeIndex,
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Page 2"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "page 3"),
        ],
      ),
    );
  }
}
