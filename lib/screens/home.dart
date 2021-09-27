import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:project_3/screens/ingredients.dart';
import 'package:project_3/screens/carousel.dart';
import 'package:project_3/custom-widget/card_pizza.dart';
import 'package:project_3/custom-widget/custom_sidebar.dart';
// import 'package:myfirstproject/custom-widget/spacing.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomSideBar(),
      backgroundColor: Colors.black,
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
            ProductCard(
              imageURL:
                  "https://media.istockphoto.com/photos/picking-slice-of-pepperoni-pizza-picture-id1133727757?k=20&m=1133727757&s=170667a&w=0&h=XMwhSokTuzGSE9ABV-T0w5Eo3GbxijMX54vAGaho1LI=",
              title: "Pepperoni",
              price: "\$300",
            ),
            ProductCard(
              imageURL:
                  "https://keyassets-p2.timeincuk.net/wp/prod/wp-content/uploads/sites/63/2012/12/Chicken-mushroom-and-tomato-pizza.jpg",
              title: "Tomato",
              price: "\$450",
            ),
            ProductCard(
              imageURL:
                  "https://assets.tmecosys.com/image/upload/t_web767x639/img/recipe/vimdb/271000.jpg",
              title: "Olives",
              price: "\$200",
            ),
          ]),
        ),
      ),
    );
  }
}
