import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:project_3/custom-widget/custom_sidebar.dart';

// import 'package:myfirstproject/screens/about.dart';
// import 'package:myfirstproject/screens/bottom-navigation-example.dart';
bool _lights = false;

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomSideBar(),
      // drawer: BottomNavigationExample(),
      appBar: AppBar(
        title: Text("Account"),
        backgroundColor: Colors.red.shade700,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/user_profile.jpg"),
            ),
            title: Row(
              children: [
                Text("Kelly"),
              ],
            ),
            subtitle: Text("9991827364"),
            trailing: Text(
              "Edit",
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
            ),
          ),
          SwitchListTile(
              title: const Text('Lights'),
              value: _lights,
              secondary: const Icon(
                Icons.notifications_active_outlined,
                size: 40.0,
              ),
              onChanged: (value) {}),
          ListTile(
            leading: Icon(
              Icons.shopping_bag_outlined,
              size: 40.0,
            ),
            title: Text("My Orders"),
            subtitle: Text("Manage Orders"),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Icon(
              Icons.wysiwyg_outlined,
              size: 40.0,
            ),
            title: Text("My Addresses"),
            subtitle: Text("Manage delivery addresses"),
            trailing: Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}
