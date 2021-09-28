import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:project_3/screens/ingredients.dart';
// import 'package:project_3/screens/carousel.dart';
// import 'package:project_3/custom-widget/card_pizza.dart';
import 'package:project_3/custom-widget/custom_sidebar.dart';
// import 'package:project_3/screens/bottom_bar.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({Key? key}) : super(key: key);

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
      body: ListView(children: [
        ListTile(
          title: Row(
            children: [
              Text("#129446743"),
            ],
          ),
          subtitle: Text(
              "9991827364                                                                                 04-June-2021 14:00:05"),
          isThreeLine: true,
          trailing: Text(
            "PROCESS",
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
          ),
        ),
        ListTile(
          title: Row(
            children: [
              Text("#129446743"),
            ],
          ),
          subtitle: Text(
              "9991827364                                                                                 04-June-2021 14:00:05"),
          isThreeLine: true,
          trailing: Text(
            "COMPLETED",
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
          ),
        ),
        ListTile(
          title: Row(
            children: [
              Text("#129446743"),
            ],
          ),
          subtitle: Text(
              "9991827364                                                                                 04-June-2021 14:00:05"),
          isThreeLine: true,
          trailing: Text(
            "COMPLETED",
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
          ),
        ),
        ListTile(
          title: Row(
            children: [
              Text("#129446743"),
            ],
          ),
          subtitle: Text(
              "9991827364                                                                                 04-June-2021 14:00:05"),
          isThreeLine: true,
          trailing: Text(
            "COMPLETED",
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
          ),
        ),
        ListTile(
          title: Row(
            children: [
              Text("#129446743"),
            ],
          ),
          subtitle: Text(
              "9991827364                                                                                 04-June-2021 14:00:05"),
          isThreeLine: true,
          trailing: Text(
            "COMPLETED",
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
          ),
        ),
      ]),
    );
  }
}
