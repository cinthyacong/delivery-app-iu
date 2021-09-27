import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_3/screens/home.dart';

class CustomSideBar extends StatelessWidget {
  const CustomSideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.phone_android),
                    title: Text("Login"),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone_android),
                    title: Text("Sing up"),
                  ),
                  ListTile(
                    leading: Icon(Icons.print_outlined),
                    title: Text("Home"),
                    onTap: () {
                      Get.to(HomeScreen());
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.phone_android),
                    title: Text("Cart"),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone_android),
                    title: Text("Account"),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone_android),
                    title: Text("My Orders"),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone_android),
                    title: Text("View Orders"),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone_android),
                    title: Text("My Addrees"),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone_android),
                    title: Text("Add/Edit Address"),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone_android),
                    title: Text("Edit Profile"),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 40,
            child: Text("version 2.0"),
          )
        ],
      ),
    );
  }
}
