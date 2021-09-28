import 'package:flutter/material.dart';
import 'package:project_3/custom-widget/custom_sidebar.dart';

class ViewOrdersScreen extends StatelessWidget {
  const ViewOrdersScreen({Key? key}) : super(key: key);

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
          "#129446743",
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
              Text(
                "Order",
                style: TextStyle(
                  fontSize: 16.0,
                  // fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          subtitle: Text("04-June-2021 14:00:05"),
          isThreeLine: true,
          trailing: Text(
            "#129446743",
            style: TextStyle(
              fontSize: 16.0,
              // fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        ListTile(
          title: Row(
            children: [
              Text(
                "Status",
                style: TextStyle(
                  fontSize: 16.0,
                  // fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          trailing: Text(
            "PROCESS",
            style: TextStyle(
              fontSize: 16.0,
              // fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        ListTile(
          title: Row(
            children: [
              Text("Delivery"),
            ],
          ),
          subtitle:
              Text("Ohio(OH), 43014 · (503) 852-3070 347 S Pine St Carlton"),
          isThreeLine: true,
          trailing: Text(
            "COD",
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
          ),
        ),
        Container(
            margin: const EdgeInsets.only(top: 5.0, left: 5.00),
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
              "CART ITEMS",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.red.shade700,
              ),
            )),
        ListTile(
          title: Row(
            children: [
              Text("Pizza Pepperoni"),
            ],
          ),
          subtitle: Text("Qty:1 x \$300"),
          isThreeLine: true,
          trailing: Text(
            "\$300",
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
          ),
        ),
        ListTile(
          title: Row(
            children: [
              Text("Pizza Mushroom"),
            ],
          ),
          subtitle: Text("Qty:2 x \$250"),
          isThreeLine: true,
          trailing: Text(
            "\$500",
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
          ),
        ),
        ListTile(
          title: Row(
            children: [
              Text("Pizza Tomato"),
            ],
          ),
          subtitle: Text("Qty:1 x \$200"),
          isThreeLine: true,
          trailing: Text(
            "\$200",
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
          ),
        ),
        Container(
          // width: 400,
          margin: const EdgeInsets.only(top: 120.0),
          height: 80,
          decoration: BoxDecoration(color: Colors.red.shade700),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Text('Total',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white))),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Text('\$1,000',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white))),
          ]),
        )
      ]),
    );
  }
}
