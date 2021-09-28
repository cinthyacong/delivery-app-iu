import 'package:flutter/material.dart';
// import 'package:myfirstproject/screens/bottom-navigation-example.dart';
// import 'package:myfirstproject/screens/counter.dart';
import 'package:project_3/screens/home.dart';
import 'package:project_3/screens/edit_profile.dart';
import 'package:project_3/screens/account.dart';
import 'package:get/get.dart';
// import 'package:myfirstproject/screens/listview-screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // darkTheme: ThemeData.dark(),
      // ThemeData(
      //   primaryColor: Colors.orangeAccent,
      //   scaffoldBackgroundColor: Colors.black
      // ),
      themeMode: ThemeMode.dark,
      home: HomeScreen(),
    );
  }
}
