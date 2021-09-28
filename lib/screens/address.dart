import 'package:flutter/material.dart';
import 'package:project_3/custom-widget/custom_sidebar.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({Key? key}) : super(key: key);

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
              Text("Home"),
            ],
          ),
          subtitle:
              Text("Ohio(OH), 43014 · (503) 852-3070 347 S Pine St Carlton"),
          isThreeLine: true,
          trailing: Icon(Icons.create_outlined),
        ),
        ListTile(
          title: Row(
            children: [
              Text("Office"),
            ],
          ),
          subtitle:
              Text("Ohio(OH), 43014 · (503) 852-3070 347 S Pine St Carlton"),
          isThreeLine: true,
          trailing: Icon(Icons.create_outlined),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red.shade700,
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
