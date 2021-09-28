import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

var imageURL1 = "assets/pizza_1.jpg";
var imageURL2 = "assets/pizza_2.jpg";
var imageURL3 = "assets/pizza_3.jpg";

class Carousel extends StatelessWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(
          height: 170,
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
        ),
        items: [
          Container(
            width: 400,
            child: Image.network(
              imageURL1,
              // fit: BoxFit.fill,
            ),
          ),
          Container(
              width: 400,
              child: Image.network(
                imageURL2,
                // fit: BoxFit.fill,
              )),
          Container(width: 400, child: Image.network(imageURL3))
        ],
      ),
    );
  }
}
