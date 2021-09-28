import 'package:flutter/material.dart';
import 'package:project_3/custom-widget/custom_sidebar.dart';
import 'package:project_3/custom-widget/cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: CustomSideBar(),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.red.shade700,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => {},
          ),
          title: Text(
            "My Orders",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),

          // centerTitle: true,
        ),
        body: Container(
            margin: const EdgeInsets.only(top: 5.0),
            padding: EdgeInsets.only(left: 2.0, right: 2.0),
            child: ListView(children: [
              CartItem(),
              CartItem(),
              CartItem(),
              SizedBox(height: 200.0),
              ListTile(
                title: Row(
                  children: [
                    Text("Delivery Address"),
                  ],
                ),
                subtitle: Text(
                    "Ohio(OH), 43014 · (503) 852-3070 347 S Pine St Carlton"),
                isThreeLine: true,
                trailing: Text(
                  "Change",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.red.shade700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              ListTile(
                title: Row(
                  children: [
                    Text("Payment Method"),
                  ],
                ),
                subtitle: Text("COD"),
                isThreeLine: true,
                trailing: Text(
                  "Change",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.red.shade700,
                  ),
                ),
              ),
              Container(
                // width: 400,
                margin: const EdgeInsets.only(top: 10.0),
                height: 80,
                decoration: BoxDecoration(color: Colors.red.shade700),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                          child: Text('Checkout \$1,000',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))),
                    ]),
              )
            ])));
  }
}
