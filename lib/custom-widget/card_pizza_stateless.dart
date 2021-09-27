import 'package:flutter/material.dart';

class ProductCard2 extends StatelessWidget {
  // ProductCard({Key? key}) : super(key: key);

  var title = "";
  var price = "";
  var imageURL = "";

  ProductCard2({
    required this.title,
    required this.price,
    required this.imageURL,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 200,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.network(
                imageURL,
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Container(
          //     height: 80,
          //     color: Colors.orange,
          //     child: Text("40% Off"),
          //   ),
          // ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 30,
              // color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Text("$title"),
                        Text("$price"),
                      ],
                    ),
                  ),
                  Container(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Positioned(
          //   child: Container(child: Text("Hello"), color: Colors.red),
          //   top: 40,
          //   right: 80,
          // ),
        ],
      ),
    );
  }
}
