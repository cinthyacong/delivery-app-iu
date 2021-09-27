import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  var title = "";
  var price = "";
  var imageURL = "";

  ProductCard({
    required this.title,
    required this.price,
    required this.imageURL,
  });

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  // ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 150,
      width: 150,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.network(
                widget.imageURL,
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
              height: 40,
              // color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Text("${widget.title}"),
                        Text("${widget.price}"),
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
