import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_3/screens/home.dart';
import 'package:project_3/screens/login.dart';
import 'package:project_3/screens/sign-up.dart';
import 'package:project_3/screens/account.dart';
import 'package:project_3/screens/orders.dart';
import 'package:project_3/screens/view-orders.dart';
import 'package:project_3/screens/edit_profile.dart';
import 'package:project_3/screens/address.dart';
import 'package:project_3/screens/edit_address.dart';
import 'package:project_3/screens/cart.dart';

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
                    leading: Icon(Icons.login),
                    title: Text("Login"),
                    onTap: () {
                      Get.to(LoginScreen());
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.app_registration),
                    title: Text("Sing up"),
                    onTap: () {
                      Get.to(SignUpScreen());
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    onTap: () {
                      Get.to(HomeScreen());
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.shopping_cart),
                    title: Text("Cart"),
                    onTap: () {
                      Get.to(CartScreen());
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.account_box),
                    title: Text("Account"),
                    onTap: () {
                      Get.to(AccountScreen());
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.reorder),
                    title: Text("My Orders"),
                    onTap: () {
                      Get.to(OrdersScreen());
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.view_list),
                    title: Text("View Orders"),
                    onTap: () {
                      Get.to(ViewOrdersScreen());
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.location_on),
                    title: Text("My Address"),
                    onTap: () {
                      Get.to(AddressScreen());
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.edit_location),
                    title: Text("Add/Edit Address"),
                    onTap: () {
                      Get.to(EditAddressScreen());
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.app_settings_alt),
                    title: Text("Edit Profile"),
                    onTap: () {
                      Get.to(EditProfileScreen());
                    },
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
