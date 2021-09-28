import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:project_3/screens/ingredients.dart';
import 'package:project_3/screens/carousel.dart';
import 'package:project_3/custom-widget/card_pizza.dart';
import 'package:project_3/custom-widget/custom_sidebar.dart';
// import 'package:project_3/screens/bottom_bar.dart';

var imageURL1 = "assets/pizza_1.jpg";
var imageURL2 = "assets/pizza_2.jpg";
var imageURL3 = "assets/pizza_3.jpg";

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomSideBar(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red[700],
        elevation: 0,
        title: Text("Home"),

        // centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(children: [
            Carousel(),
            Ingredients(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ProductCard(
                  imageURL: imageURL1,
                  title: "Pepperoni",
                  price: "\$300",
                ),
                ProductCard(
                  imageURL: imageURL2,
                  title: "Tomato",
                  price: "\$450",
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ProductCard(
                  imageURL: imageURL3,
                  title: "Olives",
                  price: "\$200",
                ),
                ProductCard(
                  imageURL: imageURL1,
                  title: "Tomato",
                  price: "\$450",
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
