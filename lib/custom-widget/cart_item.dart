import 'package:flutter/material.dart';

var imageURL1 = "assets/pizza_1.jpg";
var imageURL2 = "assets/pizza_2.jpg";
var imageURL3 = "assets/pizza_3.jpg";

class CartItem extends StatelessWidget {
  const CartItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5.0, left: 5.00, right: 5.00),
      padding: EdgeInsets.only(left: 5.0, right: 10.00),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              imageURL1,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Pizza Pepperoni'),
              Text('Qty:1 x \$300'),
            ],
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 18,
                ),
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    primary: Colors.red.shade700,
                    minimumSize: Size(25, 25)),
              ),
              Text('1'),
              ElevatedButton(
                onPressed: () {},
                child: Icon(
                  Icons.remove,
                  color: Colors.white,
                  size: 18,
                ),
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    primary: Colors.red.shade700,
                    minimumSize: Size(25, 25)),
              ),
            ],
          ),
          Text('\$300')
        ],
      ),
    );
  }
}
